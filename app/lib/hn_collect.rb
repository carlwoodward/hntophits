# vim: ft=ruby

require 'net/http'
require 'net/https'
require 'json'

module HNCollect

  class ServerUnavailable < StandardError; end

  @cache = {
    hn_id: nil,
    description: nil,
    href: nil
  }

  extend self

  attr_accessor :HackerNewsURL
  attr_accessor :HackerNewsPort

  @HackerNewsURL = 'hacker-news.firebaseio.com'
  @HackerNewsPort = 443

  attr_accessor :ReadTimeOut

  @ReadTimeOut = 60

  def story_cached?(hn_id)
    @cache[:hn_id] == hn_id ? true : false
  end

  def update_cache(hn_id, description, href)
    @cache[:hn_id] = hn_id
    @cache[:description] = description
    @cache[:href] = href
  end

  def one_minute
    60
  end

  def last_top_story
    return @cache.values_at(:hn_id, :description, :href)
  end

  def https_response_code_bad? code
    Integer(code) == 200 ? false : true
  end

  def https_get path
    http = Net::HTTP.new(@HackerNewsURL, @HackerNewsPort)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.read_timeout = @ReadTimeOut
    resp, data = http.get(path, nil)
    raise HNCollect::ServerUnavailable, resp if https_response_code_bad?(resp.code)
    JSON.parse(resp.body)
  end

  def get_top_hit
    https_get('/v0/topstories.json').first
  end

  def get_story hn_id
    story = https_get "/v0/item/#{hn_id}.json"
    hn_id, description, href = story.values_at(*%w(id title url))
    update_cache(hn_id, description, href)
    return hn_id, description, href
  end

  def get_top_hit_details top_hit
    hn_id, description, href = if story_cached?(top_hit)
      last_top_story
    else
      get_story(top_hit)
    end
  end

  # adjusted_delay
  #
  # Ensure that the collection of data happens every minute by monitoring the time taken
  # and waiting less because of it.
  def adjusted_delay(endtime, starttime)
    [one_minute - (endtime - starttime).abs, 0].max
  end

  def run_every_minute
    loop do
      start_time = Time.now
      yield
      end_time = Time.now
      sleep adjusted_delay(end_time, start_time)
    end
  end

  def at_the_beginning_of_the_next_minute
    Kernel.sleep(60-Time.now.sec)
    yield
  end

  def load_data_from_hackernews
    time = Time.now
    top_hit = get_top_hit
    hn_id, description, href = get_top_hit_details(top_hit)
    puts "#{time}: #{hn_id} '#{description}' '#{href}'"
    HN.process_latest_hn_num_one(hn_id: hn_id, description: description, href: href, date: Time.now)
  rescue Net::ReadTimeout
    HNTools.email "#{time}: timeout reading data - ignoring"
  rescue Errno::ECONNREFUSED
    HNTools.email "#{time}: connection refused to HackerNews"
  rescue JSON::ParserError
    HNTools.email "#{time}: bad JSON data returned"
  rescue HNCollect::ServerUnavailable
    HNTools.email "#{time}: server unavailable - retrying"
    Kernel.sleep 5
    retry
  end

  def run
    $stdout.sync = $stderr.sync = true
    at_the_beginning_of_the_next_minute do
      run_every_minute do
        load_data_from_hackernews
      end
    end
  rescue => e
    HNTools.email "#{Time.now} HNCollect.run: unexpected exception #{e.inspect}; retrying"
    Kernel.sleep 14
    retry
  end
end
