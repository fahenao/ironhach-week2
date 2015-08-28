require_relative "../referee.rb"

RSpec.describe Referee do
  let(:referee) { Referee.new }

  describe "#referee methods" do
    it "should create a referee" do
      expect(referee).to eq(value)
    end
  end
end