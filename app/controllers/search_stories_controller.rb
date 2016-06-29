class SearchStoriesController < ApplicationController

  def index
    @stories = Story.search(search_params)
  end
  
  private

  def search_params
    params.require(:search)
  end

end
