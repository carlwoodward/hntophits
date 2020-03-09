class CreateStories < ActiveRecord::Migration[4.2]
  def change
    create_table :stories do |t|
      t.integer :hn_id
      t.string :href
      t.string :description

      t.timestamps
    end
    add_index :stories, :hn_id
  end
end
