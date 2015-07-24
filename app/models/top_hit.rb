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

  class TopHitsInChunks
    def initialize
      @offset, @records_per_search = 0, 50
      @nrecords_read_last_time = 0
      @first_time = true
    end
    def next_chunk
      records = TopHit.order(date_seen: :desc).offset(@offset).limit(@records_per_search)
      @offset += 50
      @nrecords_read_last_time = records.length
      records
    end
    def still_records_to_read
      if @first_time
        @first_time = false
        true
      else
        @nrecords_read_last_time == @records_per_search
      end
    end
  end

  class UniqueStories
    def initialize
      @unique_stories, @stories = [], Hash.new(0)
    end
    def add_if_unique story
      if not @stories.has_key? story
        @unique_stories << story
        @stories[story] += 1
      end
    end
    def list_of
      @unique_stories
    end
  end

  # find ten unique stories in date order.
  def self.get_recent_top_hits(max_number_of_stories=10)
    chunks = TopHitsInChunks.new
    unique_stories = UniqueStories.new
    while unique_stories.list_of.length < max_number_of_stories and chunks.still_records_to_read
      chunks.next_chunk.each do |tophit|
        unique_stories.add_if_unique tophit.story
        break if unique_stories.list_of.length == max_number_of_stories
      end
    end
    unique_stories.list_of
  end

end
