# Release 0: Define Santa class and add 3 instance methods

class	Santa

	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

# Driver code
puts "Should initialize a Santa instance."
santa = Santa.new

puts "Call speak method should return a greeting"
santa.speak

puts "Call eat_milk_and_cookies method passing 'oreo' as a parameter should return a greeting using the argument"
santa.eat_milk_and_cookies("oreo")
