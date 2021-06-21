class Item
  attr_reader :real_price, :name
  attr_writer :price

  @@discount = 0.1

  def initialize(options = {})
    @realprice  = options[:price]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield name
    else
      puts 'Nothing to show'
    end
  end

  def self.discount
    if Time.now.month == 6
      @@discount += 0.3
    else
      @@discount
    end
  end

  def price
    if @real_price
    (@real_price - @real_price * self.class.discount) + tax
    end
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price.to_i > 5
                 @real_price.to_i * 0.2
               else
                 @real_price.to_i * 0.1
               end
    cost_tax + type_tax
  end
end