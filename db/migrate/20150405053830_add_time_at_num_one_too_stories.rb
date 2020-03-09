class AddTimeAtNumOneTooStories < ActiveRecord::Migration[4.2]
  def change
    add_column :stories, :time_at_num_one, :integer, :default => 0
  end
end
