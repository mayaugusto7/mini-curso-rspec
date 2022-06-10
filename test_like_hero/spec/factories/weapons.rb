FactoryBot.define do
  factory :weapon do
    name { Faker::Games::Heroes.specialty }
    description { Faker::Games::Heroes.artifact }
    power_base { 1000 }
    power_step { 100 }
    level { Faker::Number.within(range: 1..99) }
  end
end
