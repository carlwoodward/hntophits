require 'rails_helper'

RSpec.describe StoriesController, type: :controller do

  describe "GET #index" do
    it "check status of index for stories_controller" do
      stories = 0.upto(2).map do |i|
        story = create(:story)
        story.time_at_num_one = 2 - i
        story.save
        story
      end
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(assigns(:stories)).to eq stories
    end
  end

  describe "GET #show" do
    it "execercise the show method of the stories controller" do
      story = create(:story)
      get :show, id: story.id
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
      expect(assigns(:story)).to eq story
    end
  end

end
