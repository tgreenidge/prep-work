# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5
def morse_encode(str)

	alpha_morse_codes = {
		'A' => '.-',
		'B' => '-...',
		'C' => '-.-.',
		'D' => '-..',
		'E' => '.',
		'F' => '..-.',
		'G' => '--.',
		'H' => '....',
		'I' => '..',
		'J' => '.---',
		'K' => '-.-',
		'L' => '.-..',
		'M' => '--',
		'N' => '-.',
		'O' => '---',
		'P' => '.--.',
		'Q' => '--.-',
		'R' => '.-.',
		'S' => '...',
		'T' => '-',
		'U' => '..-',
		'V' => '...-',
		'W' => '.--',
		'X' => '-..-',
		'Y' => '-.--',
		'Z' => '--..'
	}

	encoded_str = []
	words = str.upcase.split
	words.each do |word|
		letters = word.split("").map{ |w| alpha_morse_codes[w] + " "}
		encoded_str << letters
		encoded_str << ' '
	end

	return encoded_str.join.strip
end
