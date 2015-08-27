require_relative "./robot.rb"

class RobotCage
  def initialize
    robotA = Robot.new
    robotB = Robot.new
    @contenders = {robotA: robotA.life, robotB: robotB.life}
  end

  def show_contenders
    @contenders
  end

end