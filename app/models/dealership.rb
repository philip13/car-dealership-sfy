class Dealership < ApplicationRecord
  validates :name, :address, :country, presence: true
end
