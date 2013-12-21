class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.decimal :total_spent
      t.integer :favorite_collection_id
      t.timestamps
    end
  end
end
