require "rails_helper"

RSpec.describe "stories/show.json.jbuilder", type: :view do
  it "returns a story formatted as json" do
    assign(:story, create(:story))
    render
    r = JSON.parse(response.body)
    expect(r.has_key?("story")).to eq true
    expect(r["story"].has_key?("hacker_news_id")).to eq true
    expect(r["story"].has_key?("url")).to eq true
    expect(r["story"].has_key?("title")).to eq true
    expect(r["story"].has_key?("minutes_at_number_one")).to eq true
  end
end
