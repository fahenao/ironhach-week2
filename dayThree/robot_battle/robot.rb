class Robot
  attr_accessor :life, :attacks

  def initialize
    @life = 200
    @attacks = {weak: 10, strong: 20, definitive: 50}
  end

  def weak_attack
    @life -= attacks[:weak]
  end

  def strong_attack
    @life -= attacks[:strong]
  end

  def definitive_attack
    @life -= attacks[:definitive]
  end
end