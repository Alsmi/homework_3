# 3) Написать функцию которая принимает массив в качестве параметра,
# Массив состоит из целых чисел, необходимо вернуть хэш в котором в качестве
# ключа будет число из массива, а в качестве значения, количество повторений
# этого элемента в массиве.
puts "Возьмем произвольный массив, который состоит из целых чисел..."
sleep 2
array = [54, 55, 7, 39, 7, 67, 89, 39, 39, 43, 7, 43]
puts "Допустим, вот он: #{array}"
sleep 2
puts "Теперь, при помощи специально созданной функции..."
sleep 2
puts "Которая принимает наш массив в качестве параметра..."
sleep 2
puts "Возвращаем хэш, в котором в качестве ключа будет число из массива..."
sleep 2
puts "А в качестве значения - количество повторений этого элемента в массиве..."
sleep 2
puts "Вуаля..."
def array_to_hash(arr)
	hash = {}
	current = nil
	count = 0
	for item in arr.sort
		if item != current
			if count > 0
				hash[current] = count
			end
		current = item
		count = 1
		else
			count += 1
		end
	end
	if count > 0
		hash[current] = count
	end
	puts hash
end
array_to_hash(array)