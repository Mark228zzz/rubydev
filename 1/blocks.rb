array = %w[Dasha Masha Pasha]
hash = { name: 'Dasha', age: 21, height: 175 }

array.each { |name| puts name }
5.times { puts 'Hello Ruby'}
hash.each_key {|i| puts i}
puts '__________'
array.each_with_index { |value, index| puts value.to_s + " " + index.to_s }

File.open("block.txt", "w") { |y| y.puts "hello Ruby" }

puts '_____'

array.each_with_index { |value, index| puts value if index == 2 }