# Release 0: Define Santa class and add 3 instance methods

# BUSINESS LOGIC
class	Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

# DRIVER CODE

# Release 1 tests:
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

puts "Should return each Santa instance in the array executing its methods"
santas.each do |santa|
	santa.speak
	santa.eat_milk_and_cookies('oreo')
end


# Release 0 tests:
# puts "Should initialize a Santa instance."
# santa = Santa.new

# puts "Call speak method should return a greeting"
# santa.speak

# puts "Call eat_milk_and_cookies method passing 'oreo' as a parameter should return a greeting using the argument"
# santa.eat_milk_and_cookies("oreo")

