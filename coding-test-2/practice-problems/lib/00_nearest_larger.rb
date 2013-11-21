# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example beow), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, idx)
	arr_max_length = arr.length
	if idx == 0
		return find_nearest_index(arr)
	elsif idx == (arr_max_length - 1)
		reverse_array_idx = find_nearest_index(arr.reverse)
		return (reverse_array_idx == nil) ? nil  : (idx - reverse_array_idx)
	else
		#slice array on index to create 2 arrays
		#find nearest index on left (reverse left array)
		#find nearest index on right
		#compare left and right index
			# if  left or right is nil
				# if both nil return nil
				# if left nil return right_index
				# if right nil, return left_index
			# if left == right
				#return left
			# if left < right 
				#return left
			#else return right

		places_left = find_nearest_index((arr[0..idx]).reverse) 
		places_right = find_nearest_index(arr[idx..(arr_max_length - 1)]) 

		if places_right == places_left
			return places_left
		elsif (places_left == nil) || (places_right == nil) 
			return (places_left == nil) ? idx + places_right : idx - places_left
		else
			return (places_left < places_right) ? idx - places_left : idx + places_right
		end
	end 
end

def find_nearest_index(array)
	for i in (1..array.length - 1)
	 return i if array[i] > array[0]
	end 
	return nil
end


