
# The code in this module is used by the collection services (load_db and hn_collect)
# to update the database via active record. It is the interface between rails and
# external story collection code.

module HackerNews

  def self.process_latest_hn_num_one(hn_id:, date:, href:, description:)
    Story.transaction do
      story = Story.process(hn_id: hn_id, date: date, href: href, description: description)
      TopHit.process_latest_top_story(story_id: story.id, date: date)
    end
  end

end
