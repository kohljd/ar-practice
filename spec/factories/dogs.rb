FactoryBot.define do
  factory :dog do
    name { "MyString" }
    age { 1 }
    breed { nil }
    owner { nil }
  end
end
