require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#user role 
User.create(email: "fili.cueavas+user@gmail.com", password: "123456", password_confirmation: "123456")
#user admin
User.create(email: "fili.cueavas+admin@gmail.com", password: "123456", password_confirmation: "123456", role: 1)

dealerships = []
10.times do
  dealerships << Dealership.create(
    name: Faker::Company.name, 
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.state
    )
end

puts "#{dealerships.size} dealerships was create"

10.times do |i|
  v_make = Faker::Vehicle.make
  
  car = Car.create(
    brand: v_make, 
    model: Faker::Vehicle.model(make_of_model: v_make),
    sub_model: Faker::Vehicle.year,
    price: Faker::Number.between(from: 500, to: 100000.01).round(2),
    condition: 'Used', 
    entry_date: Faker::Date.between(from: 4.years.ago, to: Date.today)
  )
  CarsDealership.create(car_id: car.id, dealership_id: dealerships[i].id)
  puts "Create a #{car.inspect}"
end

10.times do |i|
  v_make = Faker::Vehicle.make
  
  car = Car.create(
    brand: v_make, 
    model: Faker::Vehicle.model(make_of_model: v_make),
    sub_model: Faker::Vehicle.year,
    price: Faker::Number.between(from: 500, to: 100000.01).round(2),
    condition: 'New', 
    entry_date: Faker::Date.between(from: 1.years.ago, to: Date.today)
  )

  CarsDealership.create(car_id: car.id, dealership_id: dealerships[i].id)
  puts "Create a #{car.inspect}"
end
