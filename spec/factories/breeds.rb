FactoryBot.define do
  factory :breed do
    name { "Australian Kelpie" }
    group { "stock" }
    size { "medium" }
    coat_type { "double, smooth" }
    coat_length { "short" }
  end
end
