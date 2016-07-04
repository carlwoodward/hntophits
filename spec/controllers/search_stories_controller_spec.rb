require 'rails_helper'

RSpec.describe SearchStoriesController, type: :controller do

  context "verify that sanitise_search_string removes all expected characters" do

    it "removes punctuation characters" do
      controller.instance_variable_set(:@search_string, "a+b!c-d%e")
      expect(controller.send(:sanitise_search_string)).to eq "abcde"
    end

    it "removes non-ascii characters" do
      controller.instance_variable_set(:@search_string, 11.chr+'nothing')
      expect(controller.send(:sanitise_search_string)).to eq "nothing"
    end

    it "removes space character also" do
      controller.instance_variable_set(:@search_string, "two words")
      expect(controller.send(:sanitise_search_string)).to eq "twowords"
    end

  end

end
