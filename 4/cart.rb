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
      @items.each { |i| f.puts i }
    end
  end

  def read_from_file
    begin
    File.readlines(@owner.to_s + '_cart.txt')
      .each{ |i| @items << i.to_real_item }

    @items.uniq!
    rescue
    File.open(@owner.to_s + '_cart.txt', 'w') {}
    puts "File #{@owner}_cart.txt created"
    end
  end
end