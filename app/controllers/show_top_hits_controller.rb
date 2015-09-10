class ShowTopHitsController < ApplicationController

  def show
    @stories = Story.most_time_at_number_one.page(params[:page])
  end

end
