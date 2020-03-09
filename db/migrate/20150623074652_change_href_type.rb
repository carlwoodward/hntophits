class ChangeHrefType < ActiveRecord::Migration[4.2]
  def change
    change_column :stories, :href, :text
  end
end
