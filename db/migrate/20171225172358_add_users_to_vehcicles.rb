class AddUsersToVehcicles < ActiveRecord::Migration[5.0]
  def change
    add_reference :vechicles, :user, foreign_key: true
  end
end
