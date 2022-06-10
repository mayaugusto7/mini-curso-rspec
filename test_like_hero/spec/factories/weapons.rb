FactoryBot.define do
  factory :weapon do
    name { "MyString" }
    description { "MyString" }
    power_base { 1 }
    power_step { 1 }
    level { 1 }
  end
end
