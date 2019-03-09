FactoryBot.define do
  factory :story do
    sequence(:hn_id, 11111) { |n| n }
    href { "https://foobar.com" }
    description { "here is the description" }
    time_at_num_one { 10 }
  end
end

