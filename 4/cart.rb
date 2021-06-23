require_relative 'item_container'

class Cart
  attr_reader :items
  include ItemContainer

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open(@owner.to_s + '_cart.txt', 'w') do |f|
      p "#{@items.first.name}:#{@items.first.price}:#{@items.first.weight}"
      @items.each { |i| f.puts i }
    end
  end

  def read_from_file
    return  unless File.exist? @owner.to_s + '_cart.txt'

    fields = File.readlines(@owner.to_s + '_cart.txt').each{ |i| @items << i.to_real_item }



    @items.uniq!
  end
end