require "csv"

namespace :csv do
  namespace :import do
    desc "Import all data from CSV's"
    task everything: [:breeds, :dogs, :owners, :questions]

    desc "Import questions data"
    task questions: :environment do
      CSV.foreach("db/csv_data/questions.csv", headers: true) do |row|
        question_data = {
          prompt: row["Query Prompt"],
          number: row["Number"],
          key_words: row["key_words"],
          answer: row["Answer"]
        }

        Question.create!(question_data)
      end

      puts "Questions imported"
    end

    desc "Import breed data"
    task breeds: :environment do
      CSV.foreach("db/csv_data/breeds.csv", headers: true) do |row|
        breed_data = {
          name: row["Breed"].titleize,
          group: row["Group"],
          size: row["Size"],
          coat_type: row["Coat"],
          coat_length: row["Length"]
        }
        Breed.create!(breed_data)
      end

      puts "Breeds imported"
    end

    desc "Import dog data"
    task dogs: :environment do
      CSV.foreach("db/csv_data/dogs.csv", headers: true) do |row|
        dog_data = {
          name: row["Name"],
          age: row["Age"].to_i
        }
        breed_id = row["Breed_ID"].to_i

        dog_data[:breed_id] = if Breed.exists?(breed_id)
          breed_id
        else
          Breed.first.id
        end

        Dog.create!(dog_data)
      end
      puts "Dogs imported"
    end

    desc "Import owner data"
    task owners: :environment do
      CSV.foreach("db/csv_data/owners.csv", headers: true) do |row|
        owner_data = {
          first_name: row["First Name"],
          last_name: row["Last Name"],
          age: row["Age"]
        }
        owner = Owner.create!(owner_data)

        (1..3).each do |i|
          dog_id = row["Dog_#{i}"].to_i
          owner.dogs << Dog.find(dog_id) if Dog.exists?(dog_id)
        end
      end
      puts "Owners imported"
    end
  end
end
