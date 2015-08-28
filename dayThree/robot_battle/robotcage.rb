require_relative "./robot.rb"
require_relative "./referee.rb"

class RobotCage
  def initialize
    robotA = Robot.new
    robotB = Robot.new
    referee = Referee.new
    @contenders = {robotA: robotA.life, robotB: robotB.life}
  end

  def fight_status
    @contenders
  end

end