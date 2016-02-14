# 2) Переписать поиск минимально и максимального элемента массива в
# виде функции, которая принимает 2 параметра.
# 1-й массив, 2-й булевое значение,
# если второй параметр равен true нужно найти и вернуть минимальный элемент массива,
# если второй параметр равен false нужно найти и вернуть максимальный элемент массива.

puts "Берем произвольный массив..."
array = [2, 45, 256, 4, 90, 1, 9, 125, -8 ]
sleep 3
puts "Допустим вот он: #{array}"
sleep 3
puts "Затем при помощи функции определяем минимальный либо максимальный элемент..."

def min_max(arr, boolean)
	if boolean == true
		min = arr[0]
		for item in arr
			if item < min
				min = item
			end
		end
		min
	elsif boolean == false
		max = arr[0]
		for item in arr
			if item > max
				max = item
			end
		end
		max
	end
end

sleep 2
puts "Минимальное значение элементов массива: #{min_max(array, true)}"
sleep 2
puts "Максимальное значение элементов массива: #{min_max(array, false)}"