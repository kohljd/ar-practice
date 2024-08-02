require "rails_helper"

RSpec.describe Question, type: :model do
  describe "validations" do
    it { should validate_presence_of :answer }
    it { should validate_presence_of :key_words }
    it { should validate_presence_of :number }
    it { should validate_numericality_of :number }
    it { should validate_presence_of :prompt }
  end
end
