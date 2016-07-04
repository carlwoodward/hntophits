class SearchStoriesController < ApplicationController
  before_action :search_params, only: :index

  def index
    @search_story = SearchStoryForm.new(search_string: @search_string, order_column_name: @order_column_name, order_direction: @order_direction)
    @stories = @search_story.fulfill
    logger.debug @stories.inspect
  end

  private

  def search_params
    @search_string = params.require(:search_string)
    @order_column_name = params.require(:order_column_name)
    @order_direction = params.require(:order_direction)
  end

end
