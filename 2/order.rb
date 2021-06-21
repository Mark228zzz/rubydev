class Order
  attr_reader :items
  include ItemContainer::Manager
  include ItemContainer::Info

  def initialize
    @items = []
  end

  def self.min_price
    100
  end

  def notification
    # send message to user
  end
end