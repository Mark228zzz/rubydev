class MyItem

    attr_accessor :last_name, :price


    @@discount = 0.1

  def initialize(options = {})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
    @last_name = options[:last_name]
  end
  def print
    puts 'hello'
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
end
item1 = MyItem.new({price: 20})
item2 = MyItem.new({weight: 30, price: 10, last_name: 'Car'})
p item1
p item2
item2.last_name = 'Good'
p item2
item2.price = 20
p item2
p item2.price
item1.print

