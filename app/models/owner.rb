class Owner < ApplicationRecord
  has_many :dogs

  validates :age, presence: true, numericality: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
