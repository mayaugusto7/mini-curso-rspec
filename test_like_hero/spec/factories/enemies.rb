FactoryBot.define do
  factory :enemy do
    name { Faker::Games::Heroes.name }
    power_base { Faker::Number.within(range: 1..9999) }
    power_step { Faker::Number.within(range: 1..9999) }
    level { Faker::Number.within(range: 1..99) }
    kind { %w[goblin orc demon dragon].sample }
  end
end
