class ChangeTopHitDateSeenToDatetime < ActiveRecord::Migration[4.2]
  def change
    change_column :top_hits, :date_seen, :datetime
  end
end
