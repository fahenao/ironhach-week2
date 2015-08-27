require_relative "../robot.rb"

RSpec.describe Robot do

let(:robot_contender) { Robot.new }

  describe "#robot_contender method" do
  
    it "create robots with life value" do
      expect(robot_contender.life).to eq(200)
    end

    it "reduce life in 10 when weak_attack" do
      expect(robot_contender.weak_attack).to eq(robot_contender.life = 190)
    end
  end
end