require 'rails_helper'

RSpec.describe TopHitsController, type: :controller do

  describe "GET #index" do
    it "assigns the requested student as @student" do
      get :index
      #expect(assigns(:story)).to eq(story)
    end
  end

end
