class DefaultTimeAtNumOneIs1 < ActiveRecord::Migration[4.2]
  def change
    change_column :stories, :time_at_num_one, :integer, :default => 1
  end
end
