FactoryGirl.define do
  factory :story do
    sequence(:hn_id, 11111) { |n| n }
    href "https://foobar.com"
    description "here is the description"
  end
end

