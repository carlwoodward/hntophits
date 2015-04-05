class DefaultTimeAtNumOneIs1 < ActiveRecord::Migration
  def change
    change_column :stories, :time_at_num_one, :integer, :default => 1
  end
end
