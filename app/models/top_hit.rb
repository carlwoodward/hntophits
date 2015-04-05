class TopHit < ActiveRecord::Base
  belongs_to :story

  scope :current_top_hit, -> { order(date_seen: :desc).limit(1).first }

  def self.new_story_at_top(story_id)
    TopHit.current_top_hit.story_id != story_id
  end

  def self.create_new_record(story_id:, date_seen:)
    TopHit.create(story_id: story_id, date_seen: date_seen)
  end

  def self.deal_with_top_hit(story_id:, date:)
    if new_story_at_top(story_id)
      create_new_record(story_id: story_id, date_seen: date)
    end
  end

end
