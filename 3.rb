#Заполнить массив числами фибоначчи до 100
#Каждое последующее число равно сумме двух предыдущих

array = []

num = 0
prev_num = 0
prev_prev_num = 0

while num < 100
 array << num
 num = prev_prev_num + (prev_num == 0 ? 1 : prev_num)
 prev_prev_num = prev_num
 prev_num = num
end

print array
