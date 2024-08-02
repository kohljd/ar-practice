FactoryBot.define do
  factory :question do
    prompt { "MyText" }
    number { 1 }
    key_words { "MyString" }
    answer { "MyText" }
  end
end
