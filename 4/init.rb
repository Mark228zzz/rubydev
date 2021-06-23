require_relative'cart'
require_relative'item'
require_relative'virtual_item'
require_relative'real_item'
require_relative'item_container'
require_relative'order'
require_relative'string'

@items = []
@items << RealItem.new({
            price: 240,
            weight: 200,
            name: 'car'
            })

@items << RealItem.new({
            price: 250,
            weight: 300,
            name: 'cycle'
            })

@items << RealItem.new({
            price: 250,
            weight: 310,
            name: 'bike'
            })
