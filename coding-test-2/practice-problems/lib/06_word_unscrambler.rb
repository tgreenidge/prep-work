# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(str, words)
	sorted_dict = words.map{|w| w.split("").sort.join} #creates a new dictionary of words in the dictionary but their letters sorted
	sorted_letters_in_str = str.split("").sort.join #sorts the letters in each word

	anagrams = []

	if words.length == 1
		if sorted_dict[0] == sorted_letters_in_str
			anagrams = words
		end
	else
		for i in (0.. words.length - 1)
			if sorted_letters_in_str == sorted_dict[i]
				anagrams << words[i]
			end
		end
	end
	return anagrams
end
