class TopHit < ActiveRecord::Base
  belongs_to :story

  validates :date_seen, presence: true
  validates :story_id, numericality: { integer_only: true } 

  def self.current_top_hit
    # returns nil instead of activerecord::relation
    order(date_seen: :desc).limit(1).first
  end

  def self.new_story_at_top(story_id)
    top_hit = TopHit.current_top_hit
    (top_hit == nil || top_hit.story_id != story_id) ? true : false
  end

  def self.create_new_record(story_id:, date_seen:)
    TopHit.create(story_id: story_id, date_seen: date_seen)
  end

  # deal_with_top_hit story_id, date
  # story_id is the id from the Story table of the currrently tophit on HN
  #
  def self.deal_with_top_hit(story_id:, date:)
    if new_story_at_top(story_id)
      create_new_record(story_id: story_id, date_seen: date)
    end
  end

  def self.get_recent_top_hits
    recent_top_hits = TopHit.select(:story_id).order(date_seen: :desc).limit(10)
    Story.where(id: [recent_top_hits.map {|tophit| tophit.story_id}])
  end

end
