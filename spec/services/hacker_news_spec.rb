
require 'rails_helper'

RSpec.describe HackerNews do

  context "process_latest_hn_num_one: there is a new story at the top" do

    it "should have a new story as number one in top_hits" do
      current_top_story = create(:story)
      create(:top_hit, story: current_top_story, date_seen: Time.now)
      new_top_story = build(:story, hn_id: 123456789)
      HackerNews.process_latest_hn_num_one(hn_id: new_top_story.hn_id, date: Time.now + 1.minute,
                                   href: new_top_story.href, description: new_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 123456789
    end

  end

  context "process_latest_hn_num_one: there isn't new story at the top" do
    it "should have added more time to the current top story in top_hits" do
      current_top_story = create(:story, hn_id: 656565, time_at_num_one: 1)
      create(:top_hit, story: current_top_story, date_seen: Time.now)
      expect(current_top_story.time_at_num_one).to eq 1
      HackerNews.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 2
      HackerNews.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now + 1.minute,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 3
    end
  end

  context "simulate the current story getting more time at number one followed by a new story entering the picture" do
    it "should have a new story as number one in top_hits" do
      current_top_story = create(:story, hn_id: 656565, time_at_num_one: 1)
      create(:top_hit, story: current_top_story, date_seen: Time.now)
      HackerNews.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 2
      HackerNews.process_latest_hn_num_one(hn_id: current_top_story.hn_id, date: Time.now + 1.minute,
                                   href: current_top_story.href, description: current_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 656565
      expect(TopHit.current_top_hit.story.time_at_num_one).to eq 3
      current_top_story = create(:story)
      create(:top_hit, story: current_top_story, date_seen: Time.now)
      new_top_story = build(:story, hn_id: 123456789)
      HackerNews.process_latest_hn_num_one(hn_id: new_top_story.hn_id, date: Time.now + 1.minute,
                                   href: new_top_story.href, description: new_top_story.description)
      expect(TopHit.current_top_hit.story.hn_id).to eq 123456789
    end
  end

  context "make the update of the database fail to exercise the transaction" do

    it "should raise an exception when the attributes to Story are invalid" do
      expect{
        HackerNews.process_latest_hn_num_one(hn_id: nil, date: nil, description: nil, href: nil)
      }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

end
