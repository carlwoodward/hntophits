class TopHit < ActiveRecord::Base
  belongs_to :story

  scope :top_hit, -> { order(date_seen: :desc).limit(1).first }

  def self.add(story_id:, date:)
    TopHit.create(story_id: story_id, date_seen: date)
  end

end
