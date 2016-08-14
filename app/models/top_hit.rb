class TopHit < ApplicationRecord
  belongs_to :story

  validates :date_seen, presence: true, date: { after: Proc.new { Time.new(1900) } }
  validates :story_id, numericality: { integer_only: true } 

  scope :recent_top_hits, -> {
    select('*')
    .from("(select *, rank() over (partition by story_id order by date_seen desc) from top_hits) subquery")
    .where("rank = 1")
    .order("date_seen desc")
  }

  scope :get_recent_top_hits, -> { recent_top_hits.limit(10) }

  scope :top_hit, ->(story) { recent_top_hits.where("story_id = ?", story.id) }

  def self.current_top_hit
    # returns nil instead of activerecord::relation
    order(date_seen: :desc).limit(1).first
  end

  def self.new_story_at_top(story_id)
    top_hit = TopHit.current_top_hit
    (top_hit == nil || top_hit.story_id != story_id) ? true : false
  end

  # process_latest_top_story story_id, date
  # story_id is the id from the Story table of the currrently tophit on HN
  #
  def self.process_latest_top_story(story_id:, date:)
    if new_story_at_top(story_id)
      create!(story_id: story_id, date_seen: date)
    end
  end

end
