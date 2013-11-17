class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.references :user
      t.string :image
      t.boolean :public
      t.integer :units
      t.decimal :price, :precision => 8

      t.timestamps
    end
    add_index :products, :user_id
  end
end
