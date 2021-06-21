class Item
    attr_accessor :real_price, :name
    attr_accessor :price

    @@discount = 0.1

  def initialize(options = {})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield weight
      yield name
    else
      puts 'Nothing to show'
    end
  end
  def self.discount
    if Time.new.month == 6
      @@discount += 0.3
    else
      @@discount
    end
  end
  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price * 0.2
               else
                 @real_price * 0.1
               end
    cost_tax + type_tax
  end
end