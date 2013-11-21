# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)
	ordered_vowel_words_in_string = []
	str.split.each do |s|
		ordered_vowel_words_in_string << s if ordered_vowel?(s)
	end
	ordered_vowel_words_in_string.join(" ")
end

def ordered_vowel?(word)
	vowels = ["a", "e", "i", "o", "u"]
	unordered_vowels = []
	letters_in_word = word.split("")

	letters_in_word.each do |letter|
		unordered_vowels << letter if vowels.include?(letter)
	end

	return unordered_vowels == unordered_vowels.sort
end