# ActiveRecord migration of Users model
class AddRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :role, foreign_key: true
  end
end
