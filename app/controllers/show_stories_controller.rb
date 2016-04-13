class ShowStoriesController < ApplicationController

  def show
    @stories = Story.by_most_time.page(params[:page])
  end

end
