FactoryGirl.define do
  factory :top_hit do
    sequence(:story_id) { |n| n }
    date_seen "2015-03-28"
  end
end
