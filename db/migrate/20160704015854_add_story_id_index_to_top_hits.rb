class AddStoryIdIndexToTopHits < ActiveRecord::Migration
  def change
    add_index :top_hits, :story_id
  end
end
