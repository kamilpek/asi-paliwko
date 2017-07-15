class CreateVechicleParamTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicle_param_types do |t|
      t.string :name
      t.integer :priority
      t.boolean :status

      t.timestamps
    end
  end
end
