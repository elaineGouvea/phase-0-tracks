# Release 0: Define Santa class and add 3 instance methods

# BUSINESS LOGIC
class	Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @gender = gender
    @ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
		i = @reindeer_ranking.index(reindeer_name)
		brat_reindeer = @reindeer_ranking.slice!(i)
		@reindeer_ranking << brat_reindeer
	end

	def gender=(new_gender)
		@gender = new_gender
	end
end

# DRIVER CODE

# Release 2:
puts "Should create an instance of Santa class"
p santa = Santa.new("female","Latino")
puts
puts "Santa gender == 'female' && Santa ethnicity == 'Latino' should evaluate to true:"
p santa.instance_variable_get(:@gender) == 'female' && 
santa.instance_variable_get(:@ethnicity) == 'Latino'
puts
puts "Expect to age santa in 1 year:"
santa.celebrate_birthday
puts "Santa's age: #{santa.instance_variable_get(:@age)}"
puts
puts "Expect Vixen to be in the last place of reindeer ranking evaluates to true:"
puts santa.get_mad_at("Vixen")[-1] == "Vixen"
puts 
puts "Expect to reassign gender to 'bigender' from outside the class def:"
santa.gender=("bigender")
puts "Santa changed eir gender to #{santa.instance_variable_get(:@gender)}"


# Release 1:
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_cookies = ["snickerdoodle", "oreo", "cheetos", "pretzel", "butter cookie", "rice cookie", "chocolate chips cookie"]
# puts

# Iterate through example_genders arry to create a new Santa instance of each gender & ethnicity:
# example_genders.length.times do |i|
#   puts "Creating a #{example_genders[i]} #{example_ethnicities[i]} santa..."
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
#   puts "There are now #{santas.length} Santa instances in the array"
#   puts "----"
# end
# puts

# puts "Should return each Santa instance in the array executing its methods"
# santas.each_with_index do |santa, i|
#   santa.speak
#   santa.eat_milk_and_cookies(example_cookies[i])
#   puts "----"
# end

# # Release 0:
# puts "Should initialize a Santa instance:"
# santa = Santa.new
# puts
# puts "Call speak method should return a greeting:"
# santa.speak
# puts
# puts "Call eat_milk_and_cookies method passing 'snickerdoodle' as a parameter should return a greeting using the argument:"
# santa.eat_milk_and_cookies("snickerdoodle")

