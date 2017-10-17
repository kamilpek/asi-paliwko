# ActiveRecord migration of Vechicle Fuels model
class CreateVechicleFuels < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicle_fuels do |t|
      t.string :company
      t.references :user, foreign_key: true
      t.references :vechicle, foreign_key: true
      t.integer :value
      t.integer :mileage
      t.text :desc

      t.timestamps
    end
  end
end
