FactoryBot.define do
  factory :question do
    prompt { "List all breeds" }
    number { 1 }
    key_words { "all" }
    answer { "Breed.all" }
  end
end
