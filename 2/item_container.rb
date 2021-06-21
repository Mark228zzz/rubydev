module ItemContainer
  module Manager
    def add_item (item)
      p item
      p item.price
      unless item.price < 100
        @items.push item
      end
    end
    def remove_item
      @items.pop
    end

    def validate
      @items.each do |i|
        puts 'Item has no price' if i.price.nil?
      end
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil? }
    end
    def count_valid_items
      @items.count { |i| i.price }
    end
  end
  module Info
    def count_valid_items
      @items.count { |i| i.price }
    end
  end
end