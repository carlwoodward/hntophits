# vim: ft=ruby

require 'net/http'
require 'net/https'
require 'json'

#require_relative 'hn_collect/cache'

module HNCollect
  include HNCollect::Cache

  class ServerUnavailable < StandardError; end

  extend self

  def run
    $stdout.sync = $stderr.sync = true
    at_the_beginning_of_the_next_minute do
      run_every_minute do
        load_data_from_hackernews
      end
    end
  rescue => e
    log_error "HNCollect.run: unexpected exception #{e.inspect}; retrying"
    Kernel.sleep 14
    retry
  end

  def load_data_from_hackernews
    time = Time.now
    top_hit = get_top_hit
    hn_id, description, href = get_top_hit_details(top_hit)
    puts "#{time}: #{hn_id} '#{description}' '#{href}'"
    HackerNews.process_latest_hn_num_one(hn_id: hn_id, description: description, href: href, date: Time.now)
  rescue ActiveRecord::RecordInvalid => e
    log_error "Bad Data: #{e}"
  rescue Net::ReadTimeout
    log_error "Network Time out"
  rescue Errno::ECONNREFUSED
    log_error "connection refused"
  rescue JSON::ParserError
    log_error "bad JSON data returned"
  rescue HNCollect::ServerUnavailable
    log_error "server unavailable - retrying"
    Kernel.sleep 5
    retry
  end

  def run_every_minute
    loop do
      start_time = Time.now
      yield
      end_time = Time.now
      sleep adjusted_delay(end_time, start_time)
    end
  end

  attr_accessor :HackerNewsURL
  attr_accessor :HackerNewsPort

  @HackerNewsURL = 'hacker-news.firebaseio.com'
  @HackerNewsPort = 443

  attr_accessor :ReadTimeOut

  @ReadTimeOut = 60

  def one_minute
    60
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

  def at_the_beginning_of_the_next_minute
    Kernel.sleep(60-Time.now.sec)
    yield
  end

  # TODO put this in a more appropriate module.
  def log_error msg
    Rails.logger.error "TOPHITSERROR #{msg}"
  end

end
