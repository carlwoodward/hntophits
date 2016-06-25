
module HNCollect
  module Cache

    extend self

    @@cache = {
      hn_id: nil,
      description: nil,
      href: nil
    }

    def story_cached?(hn_id)
      @@cache[:hn_id] == hn_id ? true : false
    end

    def update_cache(hn_id, description, href)
      @@cache[:hn_id] = hn_id
      @@cache[:description] = description
      @@cache[:href] = href
    end

    def last_top_story
      return @@cache.values_at(:hn_id, :description, :href)
    end

  end
end
