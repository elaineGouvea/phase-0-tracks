# Release 0: Define Santa class and add 3 instance methods

# BUSINESS LOGIC
class	Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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
example_cookies = ["snickerdoodle", "oreo", "cheetos", "pretzel", "butter cookie", "rice cookie", "chocolate chips cookie"]
puts

# Iterate through example_genders arry to create a new Santa instance of each gender & ethnicity:
example_genders.length.times do |i|
  puts "Creating a #{example_genders[i]} #{example_ethnicities[i]} santa..."
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "There are now #{santas.length} Santa instances in the array"
  puts "----"
end
puts

puts "Should return each Santa instance in the array executing its methods"
santas.each_with_index do |santa, i|
  santa.speak
  santa.eat_milk_and_cookies(example_cookies[i])
  puts "----"
end

# # Release 0 tests:
# puts "Should initialize a Santa instance:"
# santa = Santa.new
# puts
# puts "Call speak method should return a greeting:"
# santa.speak
# puts
# puts "Call eat_milk_and_cookies method passing 'snickerdoodle' as a parameter should return a greeting using the argument:"
# santa.eat_milk_and_cookies("snickerdoodle")

