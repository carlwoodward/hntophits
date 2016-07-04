require 'rails_helper'

RSpec.describe "stories_front_page/index.html.haml", type: :view do
  it "shows the stories in order" do
    stories = 0.upto(2).map do |i|
      story = create(:story)
      story.time_at_num_one = 2 - i
      story.save
      story
    end
    tophits = []
    tophits << create(:top_hit, date_seen: Time.now - 60, story: stories[0])
    tophits << create(:top_hit, date_seen: Time.now - 2 * 60, story: stories[2])
    tophits << create(:top_hit, date_seen: Time.now - 3 * 60, story: stories[1])

    assign(:top_hits, tophits)
    assign(:stories, stories)
    assign(:search_story, SearchStory.new)

    render

    top_hits = assert_select(".recent_top_hits tr td")
    expect(top_hits.length).to be 6
    expect(top_hits[0].children[1].to_s).to match(/^1 min ago$/)
    expect(top_hits[2].children[1].to_s).to match(/^2 mins ago$/)
    expect(top_hits[4].children[1].to_s).to match(/^3 mins ago$/)

    stories = assert_select(".loved_stories tr td") 
    expect(stories.length).to be 6
    expect(stories[0].children[1].to_s).to match(/^2 mins$/)
    expect(stories[2].children[1].to_s).to match(/^1 min$/)
    expect(stories[4].children[1].to_s).to match(/^1 min$/)
  end
end
