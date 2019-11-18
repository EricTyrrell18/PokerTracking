require 'rails_helper'

RSpec.describe Card, type: :model do
  context "Validations" do 
    it "is valid with valid rank and suit" do
      expect(Card.new(rank: "A", suit: "H")).to be_valid
    end
    it "is valid with null rank and suit" do
      expect(Card.new()).to be_valid
    end

  end

end

