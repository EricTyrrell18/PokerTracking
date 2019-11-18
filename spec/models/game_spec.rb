require "rails_helper"

RSpec.describe Game, type: :model do
  subject { described_class.new  }
  context "validations" do
    it { should validate_presence_of(:date_played) }
  end
  context "associations" do
    it { should have_many(:players) }
  end
end
