class AddConsumptionToVechicleFuels < ActiveRecord::Migration[5.0]
  def change
    add_column :vechicle_fuels, :consumption, :float
  end
end
