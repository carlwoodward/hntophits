class SearchStoryForm < ActiveType::Object

  attribute :search_string, :string
  attribute :order_column_name, :string
  attribute :order_direction, :string

  validates :order_direction, inclusion: { in: %w( asc desc ) }
  validates :order_column_name, inclusion: { in: %w( time_at_num_one last_seen ) }

  def fulfill
    case self.order_column_name
    when nil
      SearchStory.search_description(self.search_string)
    when "time_at_num_one"
      SearchStory.search_description_order_by_time_at_num_one(self.search_string, self.order_direction.to_sym)
    when "last_seen"
      SearchStory.search_description_order_by_date_seen(self.search_string, self.order_direction.to_sym)
    else
      raise ArgumentError, "Story.search: bad arg 'order_by' #{order_by}"
    end
  end

  def initialize(*arg)
    super
    set_defaults
  end

  private

  def set_defaults
    self.order_direction = 'desc'
    self.order_column_name ||= 'time_at_num_one'
    self.search_string ||= ""
  end

  def toggle_direction
    case self.order_direction
    when nil
      self.order_direction = 'asc'
    when 'asc'
      self.order_direction = 'desc'
    when 'desc'
      self.order_direction = 'asc'
    end
  end

end
