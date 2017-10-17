# ActiveRecord migration of Vechicle Costs model
class CreateVechicleCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicle_costs do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :vechicle, foreign_key: true
      t.integer :cost
      t.text :desc

      t.timestamps
    end
  end
end
