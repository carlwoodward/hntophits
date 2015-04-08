# vim: ft=ruby

require 'net/http'
require 'net/https'

# collect the data from the new HN api
#

module HNCollect
  extend self

  @cache = {
    hn_id: nil,
    description: nil,
    href: nil
  }

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

  def https_get path
    http = Net::HTTP.new('hacker-news.firebaseio.com', 443)
    http.use_ssl = true
    resp, data = http.get(path, nil)
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

  def run
    run_every_minute do
      top_hit = get_top_hit
      hn_id, description, href = get_top_hit_details(top_hit)
      puts "#{Time.now}: #{hn_id}"
      HN.process_latest_hn_num_one(hn_id: hn_id, description: description, href: href, date: Time.now)
    end
  end
end
