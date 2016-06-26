class StoriesController < ApplicationController

  def index
    @stories = Story.by_most_time.page(params[:page])
  end

  def show
    @stories = Story.by_most_time.page(params[:page])
  end

end
