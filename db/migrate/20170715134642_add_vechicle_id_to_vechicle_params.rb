class AddVechicleIdToVechicleParams < ActiveRecord::Migration[5.0]
  def change
    add_reference :vechicle_params, :vechicle, foreign_key: true
  end
end
