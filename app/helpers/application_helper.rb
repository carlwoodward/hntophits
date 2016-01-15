module ApplicationHelper
  extend self
  def build_hacker_news_href hn_id
    "https://news.ycombinator.com/item?id=#{hn_id}"
  end

  def time_difference_between_now_and_date_last_num_one_in_minutes date
    (Time.now - date) / 60
  end
end
