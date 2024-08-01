require "rails_helper"

RSpec.describe Owner, type: :model do
  describe "validations" do
    it { should validate_presence_of :age }
    it { should validate_numericality_of :age }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  describe "relationships" do
    it { should have_many :dogs }
  end
end
