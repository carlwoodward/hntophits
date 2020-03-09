class AddStoryIdIndexToTopHits < ActiveRecord::Migration[4.2]
  def change
    add_index :top_hits, :story_id
  end
end
