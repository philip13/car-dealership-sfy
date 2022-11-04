FactoryBot.define do
  factory :car do
    brand { "Ford" }
    model { "Fiesta" }
    sub_model { "2019" }
    price { 80000.51 }
    condition { "used" }
    entry_date { "2022-11-04" }
  end
end
