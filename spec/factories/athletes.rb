FactoryBot.define do
  factory :athlete do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    position { Faker::Sports::Football.position }
    jersey_number { Faker::Number.decimal_part(digits: 2) }
  end
end
