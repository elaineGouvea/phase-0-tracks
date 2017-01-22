# Release 0: Define Santa class and add 3 instance methods

# BUSINESS LOGIC
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

# DRIVER CODE

# Release 0 tests:
puts "Should initialize a Santa instance:"
santa = Santa.new
puts
puts "Call speak method should return a greeting:"
santa.speak
puts
puts "Call eat_milk_and_cookies method passing 'snickerdoodle' as a parameter should return a greeting using the argument:"
santa.eat_milk_and_cookies("snickerdoodle")

