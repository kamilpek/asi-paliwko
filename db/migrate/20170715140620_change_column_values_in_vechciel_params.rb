# ActiveRecord migration of Vechicle Params model
class ChangeColumnValuesInVechcielParams < ActiveRecord::Migration[5.0]
  def change
    change_column :vechicle_params, :value, :float
  end
end
