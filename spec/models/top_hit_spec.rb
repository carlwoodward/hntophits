require 'rails_helper'

RSpec.describe TopHit, type: :model do
  context "create a story with two top_hit entries and select the most recent top hit" do
    it "selects the newest top hit" do
      story = create(:story)
      create(:top_hit, date_seen: Time.now, story: story)
      top_hit = create(:top_hit, date_seen: Time.now + 1.minute, story: story)
      expect(TopHit.current_top_hit).to eq top_hit
    end
  end
  it "ensure that get_recent_top_hits returns the stories in order" do
    stories = [ create(:story), create(:story), create(:story) ]
    create(:top_hit, date_seen: Time.now - 60, story: stories[0])
    create(:top_hit, date_seen: Time.now - 2 * 60, story: stories[2])
    create(:top_hit, date_seen: Time.now - 3 * 60, story: stories[1])
    p Story.all.map {|s| s}
    p TopHit.all.map {|s| s}
    ordered_stories = TopHit.get_recent_top_hits
    p ordered_stories
    expect(ordered_stories[0].id).to eq stories[0].id
    expect(ordered_stories[1].id).to eq stories[2].id
    expect(ordered_stories[2].id).to eq stories[1].id
  end
end
