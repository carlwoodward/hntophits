class Story < ActiveRecord::Base

  has_many :top_hits

  # Check if a new story has reached #1
  def self.new_story?(hn_id)
    Story.find_by(hn_id: hn_id) == nil ? true : false
  end

  # Add an entry if it is new. Return the new record or false.
  def self.add_new_story(hn_id:, href:, description:)
    if new_story?(hn_id)
      Story.create(hn_id: hn_id, href: href, description: description)
    else
      false
    end
  end

  # Add time to a story.
  def self.add_more_time(hn_id:)
    story = Story.find_by(hn_id: hn_id) # XXX failure?
    story.time_at_num_one += 1
    story.save
  end

end
