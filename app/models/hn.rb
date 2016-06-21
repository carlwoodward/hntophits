
class HN

  def self.valid_hn_id(elem)
    String(elem) =~ /^\d+$/ ? true : false
  end

  def self.process_latest_hn_num_one(hn_id:, date:, href:, description:)
    story = Story.process(hn_id: hn_id, date: date, href: href, description: description)
    TopHit.deal_with_top_hit(story_id: story.id, date: date)
  end

end
