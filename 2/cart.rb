require_relative 'item_container'

class Cart
  attr_reader :items
  include ItemContainer::Manager

  def initialize
    @items = []
  end
end