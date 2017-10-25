class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :qunatity
      t.text :description
      t.string :publisher
      t.string :rating
      t.string :writer
      t.string :pencilier
      t.string :cover_artist
      t.integer :category_id

      t.timestamps
    end
  end
end
