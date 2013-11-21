# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)
	str_hash_map = {}
	letters = str.delete(" ")

	letters.split("").each do |letter|
		if str_hash_map.has_key?(letter)
			str_hash_map[letter] += 1
		else
			str_hash_map[letter] = 1
		end
	end
	return str_hash_map
end
