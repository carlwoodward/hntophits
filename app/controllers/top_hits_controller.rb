class TopHitsController < ApplicationController

  def index
    @top_hits = TopHit.recent_top_hits.page(params[:page])
    @search_story = SearchStoryForm.new
  end

end
