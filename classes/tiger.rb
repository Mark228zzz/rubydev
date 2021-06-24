class Tiger < Animal

  def growl
    p 'ARRRRRR ARRRRRR ARRRRRR'
  end

  def attack(enemy)
    if enemy.speed > self.speed
      p 'enemy miss'
    else
      p 'caught'
    end
  end
end