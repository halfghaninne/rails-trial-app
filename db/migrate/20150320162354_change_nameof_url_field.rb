class ChangeNameofUrlField < ActiveRecord::Migration
  def change
     remove_column :tracks, :url
     add_column :tracks, :link, :text
  end
end