class AddCostToVechicleFuel < ActiveRecord::Migration[5.0]
  def change
    add_column :vechicle_fuels, :cost, :integer
  end
end
