require 'rails_helper'

RSpec.describe ShowStoriesController, type: :controller do

  describe "GET #show" do
    it "check status of show for show_stories_controller" do
      stories = 0.upto(2).map do |i|
        story = create(:story)
        story.time_at_num_one = 2 - i
        story.save
        story
      end

      get :show

      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
      expect(assigns(:stories)).to eq stories
    end
  end

end
