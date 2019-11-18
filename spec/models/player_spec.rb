require 'rails_helper'

RSpec.describe Player, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
  end
  context "Associations" do
    it { should belong_to(:game) }
  end
end
