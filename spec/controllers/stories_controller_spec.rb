require 'rails_helper'

RSpec.describe StoriesController, type: :controller do

  describe "GET #index" do
    it "check top_hits and stories coming through from the controller" do
      stories = 0.upto(2).map do |i|
        story = create(:story)
        story.time_at_num_one = 2 - i
        story.save
        story
      end
      tophits = []
      tophits << create(:top_hit, date_seen: Time.now - 60, story: stories[0])
      tophits << create(:top_hit, date_seen: Time.now - 2 * 60, story: stories[2])
      tophits << create(:top_hit, date_seen: Time.now - 3 * 60, story: stories[1])
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(assigns(:top_hits)).to eq tophits
      expect(assigns(:stories)).to eq stories
    end
  end

end
