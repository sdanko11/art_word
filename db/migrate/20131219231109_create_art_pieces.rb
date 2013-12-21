class CreateArtPieces < ActiveRecord::Migration
  def change
    create_table :art_pieces do |t|
      t.string :name, null: false
      t.datetime :date_created 
      t.datetime :date_for_sale
      t.decimal :price, null: false
      t.boolean :available_for_purchase, null: false
      t.boolean :date_for_sale, null: false
      t.integer :art_type_id
      t.integer :collection_id
      t.integer :artist

      t.timestamps
    end
  end
end
