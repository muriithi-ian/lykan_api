class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :description
      t.string :size
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
