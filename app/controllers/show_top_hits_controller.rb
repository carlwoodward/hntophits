class ShowTopHitsController < ApplicationController

  def show
    @top_hits = TopHit.recent_top_hits.page(params[:page])
  end

end
