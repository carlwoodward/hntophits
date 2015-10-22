module ApplicationHelper
  extend self
  def build_hacker_news_href hn_id
    "https://news.ycombinator.com/item?id=#{hn_id}"
  end
end
