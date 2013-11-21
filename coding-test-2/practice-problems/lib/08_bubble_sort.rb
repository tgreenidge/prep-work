# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)
	0.upto(arr.length - 1) do
		 arr = bubble_array(arr)
	end
	return arr
end

def bubble_array(array)
	y = 0
	while y < array.length
		if (y != (array.length - 1) )
			if (  array[y] > array[y + 1]  )
				array[y], array[y + 1] = array[y + 1], array[y]
			end		
		end
		y += 1
	end
	return array
end
 