
require "#{Dir.pwd}/app/lib/hn_collect"

describe HNCollect do
  context "check the caching" do
    it "should not find the story cached" do
      expect(HNCollect.story_cached?(10)).to eq false
    end
    it "should find the story cached" do
      HNCollect.update_cache(121, "testing", "no ref")
      expect(HNCollect.story_cached?(121)).to eq true
    end
    it "should have consistent cache contents" do
      HNCollect.update_cache(121, "testing", "no ref")
      hn_id, description, href = HNCollect.last_top_story
      expect(hn_id).to eq 121
      expect(description).to eq "testing"
      expect(href).to eq "no ref"
    end
  end

  context "get_top_hit_details" do
    it "should find the story cached and call last_top_story" do
      top_hit = 121
      HNCollect.update_cache(top_hit, "testing", "no ref")
      expect(HNCollect).to receive(:last_top_story)
      HNCollect.get_top_hit_details(top_hit)
    end
    it "shouldn't find the story cached and call get_story" do
      top_hit = 121
      HNCollect.update_cache(10, "testing", "no ref")
      expect(HNCollect).to receive(:get_story).with(top_hit)
      HNCollect.get_top_hit_details(top_hit)
    end
    it "should exercise the return value of last_top_story" do
      top_hit = 121
      description = 'foobar'
      href = 'http://www.blah.com.au'
      HNCollect.update_cache(top_hit, description, href)
      rhn_id, rdescription, rhref = HNCollect.get_top_hit_details(top_hit)
      expect(rhn_id).to eq top_hit
      expect(rdescription).to eq description
      expect(rhref).to eq href
    end
  end

  context "adjusted_delay" do
    it "should return 0 if time taken is longer than 60 seconds" do
      expect(HNCollect.adjusted_delay(100, 200)).to eq 0
    end
    it "should cope with endtime being before starttime" do
      expect(HNCollect.adjusted_delay(200, 100)).to eq 0
    end
    it "should return a number less than 60 seconds" do
      expect(HNCollect.adjusted_delay(100, 103)).to eq 57
    end
  end

end
