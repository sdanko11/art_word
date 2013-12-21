class CreateFavoriteCollections < ActiveRecord::Migration
  def change
    create_table :favorite_collections do |t|
      t.string :name, null: false
      t.integer :customer_id, null:false

      t.timestamps
    end
  end
end
