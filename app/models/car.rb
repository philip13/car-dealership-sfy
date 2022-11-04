class Car < ApplicationRecord
  validates :brand, :price, :condition, :entry_date, presence: true
end
