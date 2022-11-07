class Dealership < ApplicationRecord
  has_and_belongs_to_many :cars
  validates :name, :address, :country, presence: true
end
