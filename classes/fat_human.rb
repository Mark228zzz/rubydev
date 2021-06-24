class FatHuman < Human
  def eat
    10.times.each{ p 'HHHMMMMMMMMMMM' }
    super
  end
end
