require 'rails_helper'

RSpec.describe TopHit, type: :model do

  context "create a story with two top_hit entries and select the most recent top hit" do

    it "selects the newest top hit" do
      expect(TopHit.count).to eq 0
      story = create(:story)
      create(:top_hit, date_seen: Time.now, story: story)
      top_hit = create(:top_hit, date_seen: Time.now + 1.minute, story: story)
      expect(TopHit.current_top_hit).to eq top_hit
    end

  end

  context "the order of the stories returned from get_recent_top_hits" do

    it "stories are returned in order" do
      expect(TopHit.count).to eq 0
      stories = [ create(:story), create(:story), create(:story) ]
      create(:top_hit, date_seen: Time.now - 60, story: stories[0])
      create(:top_hit, date_seen: Time.now - 2 * 60, story: stories[2])
      create(:top_hit, date_seen: Time.now - 3 * 60, story: stories[1])
      ordered_stories = TopHit.get_recent_top_hits
      expect(ordered_stories.length).to eq 3
      expect(ordered_stories[0].story_id).to eq stories[0].id
      expect(ordered_stories[1].story_id).to eq stories[2].id
      expect(ordered_stories[2].story_id).to eq stories[1].id
    end

  end

  context "nothing in the top_hits table" do

    it "should return no records" do
      expect(TopHit.count).to eq 0
      expect(TopHit.get_recent_top_hits).to be_empty
    end

  end

  context "handles a single record in the table" do

    let!(:record) do
      story = create(:story)
      create(:top_hit, date_seen: Time.now, story: story)
    end

    it "will return the only record in the table" do
      expect(TopHit.get_recent_top_hits.length).to eq 1
      expect(TopHit.get_recent_top_hits.first).to eq record
    end

  end

  context "dealing with the pathologic 2 story case for get_recent_top_hits" do

    it "should only find two records" do
      default_records_per_search = 50
      story1 = create(:story)
      story2 = create(:story)
      (default_records_per_search+10).times do
        create(:top_hit, date_seen: Time.now, story: story1)
        create(:top_hit, date_seen: Time.now, story: story2)
      end
      stories = TopHit.get_recent_top_hits
      expect(stories.length).to eq 2
    end

  end

  context "the boring test case where there is no duplication in the data" do

    it "should return 10 records" do
      expect(TopHit.count).to eq 0
      105.times { create(:top_hit, date_seen: Time.now, story: create(:story)) }
      expect(TopHit.count).to eq 105
      stories = TopHit.get_recent_top_hits
      expect(stories.length).to eq 10
    end

  end

  context "to test process_latest_top_story" do

    context "successfull use of process_latest_top_story" do

      it "should create a record in the database" do
        expect(TopHit.count).to eq 0
        TopHit.process_latest_top_story(story_id: 1, date: Time.now)
        expect(TopHit.count).to eq 1
      end

      it "should add new top hit" do
        TopHit.process_latest_top_story(story_id: 1, date: Time.now)
        TopHit.process_latest_top_story(story_id: 2, date: Time.now + 1.minute)
        expect(TopHit.current_top_hit.story_id).to eq 2
      end

      it "should not add a new top hit" do
        TopHit.process_latest_top_story(story_id: 1, date: Time.now)
        TopHit.process_latest_top_story(story_id: 1, date: Time.now + 1.minute)
        expect(TopHit.current_top_hit.story_id).to eq 1
        expect(TopHit.count).to eq 1
      end

    end

    context "testing error handling when invalid data is supplied" do

      it "should raise exception for invalid story id" do
        expect{TopHit.process_latest_top_story(story_id: "fred", date: Time.now)}.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "should raise exception for invalid date" do
        expect{TopHit.process_latest_top_story(story_id: 1, date: 1)}.to raise_error(ActiveRecord::RecordInvalid)
        expect{TopHit.process_latest_top_story(story_id: 1, date: "foo")}.to raise_error(ActiveRecord::RecordInvalid)
        expect{TopHit.process_latest_top_story(story_id: 1, date: Date.new)}.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

  end
end
