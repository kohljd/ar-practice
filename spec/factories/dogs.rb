FactoryBot.define do
  factory :dog do
    name { "Max" }
    age { 5 }
    breed

    trait :with_owner do
      owner
    end
  end
end
