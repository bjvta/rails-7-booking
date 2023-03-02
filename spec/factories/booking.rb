FactoryBot.define do
  factory :booking do
    name { "John" }
    date  { "2022-01-01" }
    time  { "2000-01-01T15:00:00.000Z" }
    address  { "404 W Ave" }
  end
end
