class ChangeHrefType < ActiveRecord::Migration
  def change
    change_column :stories, :href, :text
  end
end
