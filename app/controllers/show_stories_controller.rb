class ShowStoriesController < ApplicationController

  def show
    @stories = Story.last_seen.page(params[:page])
  end

end
