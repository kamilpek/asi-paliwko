# model of Vechicle Param class
class VechicleParam < ApplicationRecord
  belongs_to :vechicle_param_type
  belongs_to :user
end
