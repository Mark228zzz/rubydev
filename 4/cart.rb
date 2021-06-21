require_relative'item_container'

class Cart
  attr_reader :items

  def initialize
    @items = []
  end
end