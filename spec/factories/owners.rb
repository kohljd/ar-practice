FactoryBot.define do
  factory :owner do
    first_name { "Ryen" }
    last_name { "Washington" }
    age { 32 }

    transient do
      dog_count { 0 }
    end

    after(:create) do |owner, evaluator|
      create_list(:dog, evaluator.dog_count, owner: owner)
    end
  end
end
