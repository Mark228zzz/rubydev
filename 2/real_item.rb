class RealItem < Item
  attr_accessor :weight

  def intialize(options)
    @weight = options[:weight]
    super
  end

  def info
    if block_gived?
      yield weight
      super
    end
  end

end