# 4) Написать функцию которая принимает число N от нуля и более в качестве параметра,
# и возвращает массив размером N с произвольными значениями.

puts "Введите любое число от нуля и более и нажмите ENTER"
choice = gets.chomp.to_i
sleep 2
def new_arr(n)
	if n < 0
		puts "Вы ввели не корректные данные..."
	else
		numbers = []
		while numbers.length < n do
			numbers << rand(100)
		end
		puts "При помощи функции мы получили массив размером #{n} элементов с произвольными значениями..."
		sleep 2
		puts "Вот он:"
		puts numbers.to_s
	end
end
new_arr(choice)