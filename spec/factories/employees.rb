FactoryBot.define do
  factory :employee do
    first_name {  Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.full_address }
  end
end
