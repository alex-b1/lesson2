#Найти порядковый номер даты, начиная отсчет с начала года

print 'Введите число: '
day = gets.chomp.to_i

print 'Введите месяц: '
month = gets.chomp.to_i

print 'Введите год: '
year = gets.chomp.to_i

is_leap_year = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
count_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
count_days[1] = 29 if is_leap_year

day_number = day

count_days.each.with_index do |i, idx|
  day_number += i if idx < month - 1
end

print day_number
