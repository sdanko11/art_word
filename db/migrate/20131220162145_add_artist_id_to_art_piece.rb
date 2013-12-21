class AddArtistIdToArtPiece < ActiveRecord::Migration
  def up
    add_column  :art_pieces, :artist_id, :integer, null: false
  end
  def down
    remove_column :art_pieces, :artist_id
  end
end
