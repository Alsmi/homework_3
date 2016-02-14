# 6) Написать функцию которая на вход получает массив, а возвращает новый массив из всех элементов,
# которые меньше среднего арифметического элементов массива.

numbers = [1, 2, 3, 4, 5, 6, 7]
puts "Берем произвольный массив любых чисел... Вот он: #{numbers}"
sleep 2
puts "Затем при помощи функции, которая принимает наш массив в качестве параметра..."
sleep 2
puts "Возвращаем новый массив из всех элементов..."
sleep 1
puts "Которые меньше среднего арифметического элементов исходного массива:"
sleep 1
def average_arr(arr)
	result_arr = []
	sum = 0
	for item in arr
		sum += item
	end
	for item in arr
		if item < (sum / arr.length)
			result_arr << item
		end
	end
	puts result_arr.to_s
end

average_arr(numbers)