require_relative "./referee.rb"

RSpec.describe Referee do
  
let(:referee) { Referee.new }

  describe "#referee method" do
  
    it "tell the rules" do
      expect(referee.method).to eq(value)
    end
  end
end