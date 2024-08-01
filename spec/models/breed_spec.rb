require "rails_helper"

RSpec.describe Breed, type: :model do
  describe "validations" do
    it { should validate_presence_of :coat_length }
    it { should validate_presence_of :coat_type }
    it { should validate_presence_of :group }
    it { should validate_presence_of :name }
    it { should validate_presence_of :size }
  end

  describe "relationships" do
    it { should have_many :dogs }
  end
end
