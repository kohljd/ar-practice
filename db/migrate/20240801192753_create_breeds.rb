class CreateBreeds < ActiveRecord::Migration[7.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :group
      t.string :size
      t.string :coat_type
      t.string :coat_length

      t.timestamps
    end
  end
end
