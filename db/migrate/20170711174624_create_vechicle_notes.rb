class CreateVechicleNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicle_notes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :vechicle, foreign_key: true

      t.timestamps
    end
  end
end
