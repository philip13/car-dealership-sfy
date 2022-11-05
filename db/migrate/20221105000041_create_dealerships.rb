class CreateDealerships < ActiveRecord::Migration[7.0]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
