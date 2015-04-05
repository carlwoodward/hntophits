class Story < ActiveRecord::Base

  has_many :top_hits

  def self.autovivify(hn_id:, date:, href:, description:)
    story = Story.find_by(hn_id: hn_id)
    if story
      story.time_at_num_one += 1
      story.save
    else
      story = Story.create(hn_id: hn_id, href: href, description: description)
    end
    story
  end

end
