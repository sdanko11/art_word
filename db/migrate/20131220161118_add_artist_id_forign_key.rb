class AddArtistIdForignKey < ActiveRecord::Migration
  def up
    add_column  :art_types, :artist_id, :integer, null: false
  end
  def down
    remove_column :art_types, :artist_id
  end
end