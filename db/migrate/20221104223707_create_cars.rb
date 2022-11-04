class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :sub_model
      t.decimal :price, scale: 2
      t.string :condition
      t.date :entry_date

      t.timestamps
    end
  end
end
