# ActiveRecord migration of Vechicle Params model
class CreateVechicleParams < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicle_params do |t|
      t.references :vechicle_param_type, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :value
      t.string :desc

      t.timestamps
    end
  end
end
