class UniqueStoryHnId < ActiveRecord::Migration
  def change
    change_column :stories, :hn_id, :integer, unique: true
  end
end
