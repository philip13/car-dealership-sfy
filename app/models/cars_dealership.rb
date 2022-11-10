class CarsDealership < ApplicationRecord
  belongs_to :car
  belongs_to :dealership

  validate :car_located_at_unique_dealership

  def car_located_at_unique_dealership
    if located_at == true
      other_dealerships =   CarsDealership.where("car_id = ? AND located_at = ?", car_id, true)
      other_dealerships.select {|cdealer| cdealer.id != id } unless id.nil?

      if !other_dealerships.empty?
        errors.add(:located_at, 'allready have Located dealership')
      end
    end

  end
end
