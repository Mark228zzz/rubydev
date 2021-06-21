f = %w[Vlad Pasha Misha Dasha Masha Pavel Ubuntu Window Book Room Man Pasha228 Pasha225 Buznecman Home House]
nactrou_1 = rand(11)
nactrou_2 = rand(31)
nactrou_3 = rand(6)
nactrou_man = rand(11)
price = rand(500)
discount_2 = rand(2)
discount_3 = rand(11)
gg = rand(16)
puts 'Hello my game'
o = rand(40)
puts 'my age is'
puts o
puts 'my name is'
p f[gg]
if price < 100
  price += 100
end
puts 'you:How mach your car?'
puts 'My price'
p price
puts 'you:I can get a discount?'
discount_1 = rand(400)
if discount_1 <= 200
  puts'Excuse me no'
  if nactrou_3 < 3
    puts'you:I refuse'
    if nactrou_man < 5
      break
    else
      puts'Ok i give you a discount'
      puts'you:What discount will you give me'
      if discount_3 < 5
        price -= 5
        puts'Discount -5 of the price'
        puts price
        puts'you:Oh nice discount'
      else
        price -= 20
        puts'Discount -20 of the price'
        puts price
        puts'you:Oh nice discount!'
      end

    end
  else
    break
  end
else
  puts'Yes of course you can get a discount'
  if discount_2 < 1
    price -= 20
    puts 'Discount -20 of the price'
    puts price
    if nactrou_1 < 5
      puts 'you:I dont take your car'
      break
    else
      puts'you:I take your car i like the price'
      break
    end
  else
    price -= 50
    puts 'Discount -50 of the price'
    puts price
    if nactrou_2 < 10
    puts 'you:I dont take your car'
      break
    else
      puts'you:I take your car i like the price'
      break
    end
  end
end
puts'you:Bye bye'