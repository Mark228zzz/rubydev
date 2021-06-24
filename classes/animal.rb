class Animal
  attr_accessor :weight, :speed

  def initialize(settings = {})
    @weight = settings[:weight]
    @speed = settings[:speed]
  end

  def real_speed
    self.speed - self.weight / 15
  end

  def eat
    p 'ham ham ham'
  end

  def drink
    p 'gl gl gl'
  end
end
