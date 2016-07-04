
class SearchStory < ActiveType::Object
  
  attribute :id, :integer
  attribute :hn_id, :integer
  attribute :description, :text
  attribute :time_at_num_one, :integer
  attribute :date_seen, :datetime
  attribute :href, :text

  def self.search_description(search_string)
    Story.where(search_text(search_string)).map do |r|
      new(id: r.id, hn_id: r.hn_id, description: r.description, href: r.href,
          time_at_num_one: r.time_at_num_one, date_seen: r.top_hit.date_seen.to_time)
    end
  end

  def self.search_description_order_by_top_at_num_one(search_string, direction=:desc)
    direction = check_direction(direction)
    Story.where(search_text(search_string)).order(time_at_num_one: direction).map do |r|
      new(id: r.id, hn_id: r.hn_id, description: r.description, href: r.href,
          time_at_num_one: r.time_at_num_one, date_seen: r.top_hit.date_seen.to_time)
    end
  end

  def self.search_description_order_by_date_seen(search_string, direction=:desc)
    direction = check_direction(direction)
    query = <<-SQL
      with
      s as (select id, hn_id, href, description, time_at_num_one from stories where #{search_text(search_string)}),
      t as (select * from (select top_hits.story_id, top_hits.date_seen, rank() over (partition by story_id order by date_seen desc) from top_hits) subquery where rank = 1)
      select s.id, s.hn_id, s.description, s.time_at_num_one, s.href, t.date_seen from s join t on s.id = t.story_id
      order by t.date_seen
    SQL
    query += direction.to_s
    connection.exec_query(sanitize_sql([query, search_string])).map do |r|
      new(id: r["id"], hn_id: r["hn_id"], description: r["description"],
          time_at_num_one: r["time_at_num_one"], date_seen: r["date_seen"])
    end
  end

  def self.check_direction(direction)
    [:desc, :asc].include?(direction) ? direction : :desc
  end

  private

  def self.search_text(search_string="nothing")
    "description ~* '\\m#{search_string}\\M'"
  end

end
