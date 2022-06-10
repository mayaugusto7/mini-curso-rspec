require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
     user = build(:user, level: Faker::Number.within(range: 100..9999))
     expect(user).to_not be_valid
  end

  it "returns the correct hero title" do
    nickname = Faker::Games::Heroes.name
    kind = %i[knight wizard].sample
    level = Faker::Number.within(range: 1..99)

    user = build(:user, nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end
