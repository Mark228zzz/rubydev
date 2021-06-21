class RubyTutorial

  def self.description
    a,b,c = 1,2,3
    a ? b : c
    for i  in 0..5
      p i
    end
    for i in 0...5
      p i
    end
    p '_____'

    array = %w[sasha dasha pasha]
    array.map { |i| p i }
  end
end


RubyTutorial.description