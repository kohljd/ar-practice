class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :prompt
      t.integer :number
      t.string :key_words
      t.text :answer

      t.timestamps
    end
  end
end
