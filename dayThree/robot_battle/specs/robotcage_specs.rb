require_relative "../robotcage.rb"

RSpec.describe RobotCage do
  let(:cage) { RobotCage.new }

  describe "#RobotCage methods" do
    it "show a hash with two robots in it" do
      expect(cage.show_contenders).to eq({robotA: 200, robotB: 200})
    end

    it "does something" do
      
    end
  end
end