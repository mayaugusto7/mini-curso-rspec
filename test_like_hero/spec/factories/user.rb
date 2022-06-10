FactoryBot.define do
  factory :user do
    nickname { Faker::Games::Heroes.name }
    level { Faker::Number.within(range: 1..99) }
    kind { %w[knight wizard].sample }
  end
end
