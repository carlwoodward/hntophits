class CreateTopHits < ActiveRecord::Migration
  def change
    create_table :top_hits do |t|
      t.integer :story_id
      t.date :date_seen

      t.timestamps
    end
  end
end
