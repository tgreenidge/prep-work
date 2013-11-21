# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a singe year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
	unique_years = []
	(year_start .. year_end).each do |year|
		 if no_repeat?(year.to_s) == true
		 	unique_years << year
		 end
	end		
	return unique_years	
end

def no_repeat?(year)
	unique_digits_in_year = []	
	year.split("").each do |y|
		if unique_digits_in_year.include?(y)
			return false
		else
			unique_digits_in_year << y
		end
	end
	return true
end

