class ChangeTopHitDateSeenToDatetime < ActiveRecord::Migration
  def change
    change_column :top_hits, :date_seen, :datetime
  end
end
