require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it 'power armour today' do
    level = Faker::Number.within(range: 1..99)
    weapon = build(:weapon)
    expect(weapon.current_power).to eq()
  end

  it 'return title armour and level' do
    name = Faker::Games::Heroes.specialty
    level = Faker::Number.within(range: 1..99)

    weapon = build(:weapon, name: name, level: level)
    expect(weapon.title).to eq("#{name} ##{level}")
  end
end
