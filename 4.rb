#Заполнить хеш гласными буквами,
#где значением будет являтся порядковый номер буквы в алфавите (a - 1).

vowel_letter_list = {}
('a'..'z').each.with_index { |v, i| vowel_letter_list[v.to_sym] = i + 1 if 'aeiouy'.include? v }

puts vowel_letter_list

