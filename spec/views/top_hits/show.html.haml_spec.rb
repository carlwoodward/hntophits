require 'rails_helper'

RSpec.describe "top_hits/index.html.haml", type: :view do
  it "shows the top_hits in order" do
    stories = 0.upto(2).map do |i|
      story = create(:story)
      story.time_at_num_one = 2 - i
      story.save
      story
    end

    create(:top_hit, date_seen: Time.now - 60, story: stories[0])
    create(:top_hit, date_seen: Time.now - 2 * 60, story: stories[2])
    create(:top_hit, date_seen: Time.now - 3 * 60, story: stories[1])

    assign(:top_hits, TopHit.recent_top_hits.page(params[:page]))

    render

    top_hits = assert_select(".table tr td")
    expect(top_hits.length).to be 6
    expect(top_hits[0].children[1].to_s).to match(/^1 min ago$/)
    expect(top_hits[2].children[1].to_s).to match(/^2 mins ago$/)
    expect(top_hits[4].children[1].to_s).to match(/^3 mins ago$/)

  end
end
