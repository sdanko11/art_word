class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :birthplace 
      t.integer :art_type_id, null: false

      t.timestamps
    end
  end
end
