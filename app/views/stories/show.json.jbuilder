json.story do |json|
  json.hacker_news_id @story.hn_id
  json.url @story.href
  json.title @story.description
  json.minutes_at_number_one @story.time_at_num_one
end
