
class HN

  def self.process_latest_hn_num_one(hn_id:, date:, href:, description:)
    story = Story.process(hn_id: hn_id, date: date, href: href, description: description)
    TopHit.process_latest_top_story(story_id: story.id, date: date)
  end

end
