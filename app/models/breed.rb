class Breed < ApplicationRecord
  has_many :dogs

  validates :coat_length, presence: true
  validates :coat_type, presence: true
  validates :group, presence: true
  validates :name, presence: true
  validates :size, presence: true
end
