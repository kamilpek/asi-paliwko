# model of Vechicle Fuel class
class VechicleFuel < ApplicationRecord
  belongs_to :user
  belongs_to :vechicle
end
