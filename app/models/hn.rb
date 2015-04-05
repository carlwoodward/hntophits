
class HN

  def self.valid_hn_id(elem)
    String(elem) =~ /^\d+$/ ? true : false
  end

  def self.process_latest_hn_num_one(hn_id:, date:, href:, description:)
    if story = Story.add_new_story(hn_id: hn_id, href: href, description: description)
      TopHit.add(story_id: story.id, date: date)
    else
      Story.add_more_time(hn_id: hn_id)
    end
  end

end
