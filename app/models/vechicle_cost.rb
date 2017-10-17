# model of Vechicle Cost class
class VechicleCost < ApplicationRecord
  belongs_to :user
  belongs_to :vechicle
end
