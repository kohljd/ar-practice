class Question < ApplicationRecord
  validates :answer, presence: true
  validates :key_words, presence: true
  validates :number, presence: true, numericality: true
  validates :prompt, presence: true
end
