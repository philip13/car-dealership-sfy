class CarsDealership < ApplicationRecord
  belongs_to :car
  belongs_to :dealership
end
