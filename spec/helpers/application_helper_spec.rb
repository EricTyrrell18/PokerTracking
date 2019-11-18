require 'rails_helper'


RSpec.describe ApplicationHelper, :type => :helper do
  describe "#card_image_path" do
    it "returns the path of a card" do
      card = Card.new(rank:"10", suit: "H")
      expect(helper.card_image_path(card)).to eq("PNG/10H.png")
    end
  end
  describe "#card_image_tag" do
    it "returns image tag of a card (No options)" do
      card = Card.new(rank:"10", suit:"H")
      expect(helper.card_image_tag(card)).to be_a_kind_of(ActiveSupport::SafeBuffer)
    end    
  end
end
