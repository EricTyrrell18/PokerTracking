require 'rails_helper'

RSpec.describe HandsHelper, :type => :helper do
  describe "#create_deck" do
    it "returns 52 cards" do
      expect(helper.create_deck.length).to eq(52)
    end
  end
end
