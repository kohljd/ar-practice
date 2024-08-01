class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :owner, optional: true

  validates :age, presence: true, numericality: true
  validates :name, presence: true
end
