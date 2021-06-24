require_relative 'animal'
require_relative 'human'
require_relative 'super_human'
require_relative 'dog'
require_relative 'fat_human'
require_relative 'tiger'

mouse = Animal.new(weight: 4, speed: 6)
mark1 = Human.new(weight: 44, speed: 10)
mark2 = SuperHuman.new(weight: 44, speed: 58)
dog = Dog.new(weight: 50, speed: 8)
vasea = FatHuman.new(weight: 200, speed: 0.8)
tiger = Tiger.new(weight: 170, speed: 18)
