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
end
