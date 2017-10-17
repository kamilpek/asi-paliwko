# model of Vechicle Note class
class VechicleNote < ApplicationRecord
  belongs_to :user
  belongs_to :vechicle
end
