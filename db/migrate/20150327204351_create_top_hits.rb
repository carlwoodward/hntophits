class CreateTopHits < ActiveRecord::Migration[4.2]
  def change
    create_table :top_hits do |t|
      t.integer :story_id
      t.date :date_seen

      t.timestamps
    end
  end
end
