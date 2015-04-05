
require 'rails_helper'

RSpec.describe HN, type: :model do
  describe 'HN.valid_hn_id' do
    it 'should be valid' do
      expect(HN.valid_hn_id(1)).to be true
      expect(HN.valid_hn_id(2)).to be true
      expect(HN.valid_hn_id(30)).to be true
      expect(HN.valid_hn_id(444)).to be true
      expect(HN.valid_hn_id(5555)).to be true
      expect(HN.valid_hn_id(77777)).to be true
    end
    it 'should not be valid' do
      expect(HN.valid_hn_id("fred")).to be false
      expect(HN.valid_hn_id("")).to be false
    end
  end

  context "process_latest_hn_num_one: there is a new story at the top" do
    it "should have a new story as number one in top_hits" do
      current_top_story = create(:story)
      create(:top_hit, :story => current_top_story, date_seen: Time.now)
      new_top_story = build(:story, hn_id: 123456789)
      HN.process_latest_hn_num_one(hn_id: new_top_story.hn_id, date: Time.now + 1.minute,
                                   href: new_top_story.href, description: new_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 123456789
    end
  end
  context "process_latest_hn_num_one: there isn't new story at the top" do
    it "should have added more time to the current top story in top_hits" do
      current_top_story = create(:story, hn_id: 656565)
      create(:top_hit, :story => current_top_story, date_seen: Time.now)
      expect(current_top_story.time_at_num_one).to eq 1
      HN.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 2
      HN.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now + 1.minute,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 3
    end
  end
  context "simulate the current story getting more time at number one followed by a new story entering the picture" do
    it "should have a new story as number one in top_hits" do
      current_top_story = create(:story, hn_id: 656565)
      create(:top_hit, :story => current_top_story, date_seen: Time.now)
      HN.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 2
      HN.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now + 1.minute,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 3
      current_top_story = create(:story)
      create(:top_hit, :story => current_top_story, date_seen: Time.now)
      new_top_story = build(:story, hn_id: 123456789)
      HN.process_latest_hn_num_one(hn_id: new_top_story.hn_id, date: Time.now + 1.minute,
                                   href: new_top_story.href, description: new_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 123456789
    end
  end
end
