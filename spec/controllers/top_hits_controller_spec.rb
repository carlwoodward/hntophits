require 'rails_helper'

RSpec.describe TopHitsController, type: :controller do

  describe "GET #index" do
    it "exercise the #index" do
      story = create(:story)
      top_hit = create(:top_hit, story_id: story.id)
      get :index
      expect(assigns(:top_hits).first.story_id).to eq story.id
    end
  end

end
