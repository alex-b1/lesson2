# Сумма покупок

basket = {}
total_cost = 0

loop do
  print 'Название товара: '
  name = gets.chomp.downcase

  break if name == 'стоп'

  print 'Цена: '
  price = gets.chomp.to_i

  print 'Количество: '
  count = gets.chomp.to_f

  basket[name.to_sym] = {
    price: price,
    count: count,
    total_price: count * price,
  }
end

basket.each do |k, v|
  puts v
  total_cost = total_cost + v[:total_price]
end

puts "В корцине: #{basket}"
puts "Итоговая сумма #{total_cost}"
