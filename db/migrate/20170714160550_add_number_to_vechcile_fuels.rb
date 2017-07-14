class AddNumberToVechcileFuels < ActiveRecord::Migration[5.0]
  def change
    add_column :vechicle_fuels, :number, :integer
  end
end
