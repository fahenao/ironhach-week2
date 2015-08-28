require_relative "../robot.rb"

RSpec.describe Robot do

let(:robot) { Robot.new }

  describe "#robot_contender method" do
  
    it "should create robots with life value" do
      expect(robot.life).to eq(200)
    end

    it "should reduce life in 10 when weak_attack" do
      expect(robot.weak_attack).to eq(robot.life = 190)
    end

    it "should reduce life in 20 when strong_attack" do
      expect(robot.strong_attack).to eq(robot.life = 180)
    end

    it "should reduce life in 50 when strong_attack" do
      expect(robot.definitive_attack).to eq(robot.life = 150)
    end
  end
end