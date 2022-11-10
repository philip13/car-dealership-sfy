class Car < ApplicationRecord
  has_and_belongs_to_many :dealerships
  
  validates :brand, :price, :condition, :entry_date, presence: true
end
