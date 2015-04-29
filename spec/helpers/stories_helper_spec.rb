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
    it "should return 0 m" do # handle pathologic case.
      expect(helper.minutes_to_words(10)).to eq "10m"
    end
    it "should return 10 m" do
      expect(helper.minutes_to_words(10)).to eq "10m"
    end
    it "should return 1 h" do
      expect(helper.minutes_to_words(60)).to eq "1h"
    end
    it "should return 1 d" do
      expect(helper.minutes_to_words(1440)).to eq "1d"
    end
    it "should return 2 d" do
      expect(helper.minutes_to_words(1440*2)).to eq "2d"
    end
    it "should return 2 d" do
      expect(helper.minutes_to_words(1440*2+1)).to eq "2d"
    end
  end
end
