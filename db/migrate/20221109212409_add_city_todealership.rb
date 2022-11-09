class AddCityTodealership < ActiveRecord::Migration[7.0]
  def up
    add_column :dealerships, :city, :string
  end

  def down
    remove_column :dealerships, :city, :string
  end
end
