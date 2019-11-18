require 'rails_helper'

RSpec.describe Hand, type: :model  do
  subject { described_class.new}
  context "validations"
    it "should allow negative results" do
      subject.result = -1
      expect(subject).to be_valid
    end
    it "should allow decimal results" do
      subject.result = ".5"
      expect(subject).to be_valid
    end
end
