class AddDefaultValueToLocatedAt < ActiveRecord::Migration[7.0]
  def up
    change_column :cars_dealerships, :located_at, :boolean, default:false
  end

  def down
    change_column :cars_dealerships, :located_at, :boolean, default:nil
  end
end
