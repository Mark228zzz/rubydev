for i in 0..5
  p i
end
for i in 0...5
  p i
end
p '_____'

array = %w[sasha dasha pasha]

p array

puts '_____________________________'

puts array

p 1.class
p "Hello".class
p false.class
p nil.class

puts'_______________'

p 1.to_f
p 1.to_s
p 1.to_i

puts'_________________'

p rand(1..10)

p'random 1,2,3,4,5,6,7,8,9,10'

puts'_________________________________'

p rand(1...10)

p'random 1,2,3,4,5,6,7,8,9'

puts'________________________________'

p'HELLO'.downcase
p'hello'.upcase
p'hello'.capitalize

puts'___________________'

string = 'hello world'

puts string.chars

puts'_______________________'

p string.chars

puts'_____________________'

p string.split

puts'_____________________'

array = %w[sasha dasha pasha]

p array.find_index("sasha")
p array.find_index("dasha")
p array.find_index("pasha")

puts'______________________________'
array = [1, 2, 3, 4]
array.find_all { |num| p num.odd? }

puts'__________________________________________'

array.find_all { |num| p num.even? }

puts'__________________________________________'

array2 = [1, 10, 100, -1000, 0]
array2.map { |str| p str.to_s.length }

puts'__________________________________________'

hash= {car: 'audi', name: 'a8', engine: 'v12' }
p hash.reverse_each.to_h
p hash.empty?
p hash.size
p hash.keys
p hash.sort