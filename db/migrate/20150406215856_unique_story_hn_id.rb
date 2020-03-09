class UniqueStoryHnId < ActiveRecord::Migration[4.2]
  def change
    change_column :stories, :hn_id, :integer, unique: true
  end
end
