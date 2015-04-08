class StoriesController < ApplicationController
  def index
    @top_hits = TopHit.get_recent_top_hits
    @stories = Story.get_ordered_num_one_stories
  end
end
