# 5) Написать функцию которая принимает массив любых чисел в качестве параметра,
# а возвращает хэш вида { 'above_zero' => n, 'zero' => m, 'less_than_zero' => c },
# где n - количество чисел больше нуля, m - количество чисел равных нулю,
# c - количество чисел меньше нуля.
numbers = [-1, 0, 56, 43, 78, -98, 0, -54, 67, 43, 23, -5, 0]
puts "Берем произвольный массив любых чисел... Вот он: #{numbers}"
sleep 2
puts "Затем при помощи функции, которая принимает наш массив в качестве параметра..."
sleep 2
puts "Возвращаем вот такой вот хэш..."
sleep 1
def new_hash(arr)
	result_hash = {}
	count_1 = 0
	count_2 = 0
	count_3 = 0
	for item in arr
		if item > 0
			count_1 += 1
		elsif item == 0
			count_2 += 1
		else
			count_3 += 1
		end
	end
	result_hash['above_zero'] = count_1
	result_hash['zero'] = count_2
	result_hash['less_than_zero'] = count_3
	puts result_hash
end
new_hash(numbers)