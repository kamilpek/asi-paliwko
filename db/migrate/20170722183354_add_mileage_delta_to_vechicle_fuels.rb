class AddMileageDeltaToVechicleFuels < ActiveRecord::Migration[5.0]
  def change
    add_column :vechicle_fuels, :mileage_delta, :integer
  end
end
