require "rails_helper"

RSpec.describe Dog, type: :model do
  describe "validations" do
    it { should validate_presence_of :age }
    it { should validate_numericality_of :age }
    it { should validate_presence_of :name }
  end

  describe "relationships" do
    it { should belong_to :breed }
  end
end
