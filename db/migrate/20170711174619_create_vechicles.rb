class CreateVechicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vechicles do |t|
      t.string :name
      t.string :plates
      t.date :productiondate
      t.date :registration
      t.date :lastrevision
      t.date :nextrevison
      t.text :desc
      t.integer :mileage
      t.string :photo
      t.json :attachments
      t.boolean :status

      t.timestamps
    end
  end
end
