require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the StoriesHelper. For example:
#
# describe StoriesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe StoriesHelper, type: :helper do
  context "deal with less than an hour" do
    it "should return 1 min" do 
      expect(helper.minutes_to_words(0)).to eq '1 min'
    end
    it "should return 1 min" do 
      expect(helper.minutes_to_words(1)).to eq '1 min'
    end
    it "should return 10 m" do
      expect(helper.minutes_to_words(10)).to eq '10 mins'
    end
    it "should return 1 h" do
      expect(helper.minutes_to_words(60)).to eq '1 hour'
    end
    it "should return 1 h" do
      expect(helper.minutes_to_words(70)).to eq '1 hour'
    end
    it "should return 2 h" do
      expect(helper.minutes_to_words(130)).to eq '2 hours'
    end
    it "should return 1 d" do
      expect(helper.minutes_to_words(1440)).to eq '1 day'
    end
    it "should return 2 d" do
      expect(helper.minutes_to_words(1440*2)).to eq '2 days'
    end
    it "should return 2 d" do
      expect(helper.minutes_to_words(1440*2+1)).to eq '2 days'
    end
  end
end
