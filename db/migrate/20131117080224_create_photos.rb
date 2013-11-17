class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :data
      t.references :product

      t.timestamps
    end
    add_index :photos, :product_id
  end
end
