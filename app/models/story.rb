class Story < ActiveRecord::Base

  has_many :top_hits

  validates :hn_id, numericality: { only_integer: true }
  validates :time_at_num_one, numericality: { only_integer: true }
  validates :href, presence: true
  validates :description, presence: true
  validates_uniqueness_of :hn_id

  scope :last_seen, -> { order(:updated_at => :desc) }
  scope :most_time_at_number_one, -> { order(:time_at_num_one => :desc) }

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

  def self.get_ordered_num_one_stories
    Story.order(time_at_num_one: :desc).limit(10)
  end

end
