class CreateCarsDealerships < ActiveRecord::Migration[7.0]
  def change
    create_table :cars_dealerships do |t|
      t.references :car, null: false, foreign_key: true
      t.references :dealership, null: false, foreign_key: true
      t.boolean :located_at, default: false

      t.timestamps
    end
  end
end
