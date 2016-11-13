class	Santa
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "The #{@gender} #{@ethnicity} Santa says: Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

# santa = Santa.new("female","Latino")
# santa.speak
# santa.eat_milk_and_cookies("oreo")

# santas = []
# p santas << Santa.new("agender", "black")
# p santas << Santa.new("female", "Latino")
# p santas << Santa.new("bigender", "white")
# p santas << Santa.new("male", "Japanese")
# p santas << Santa.new("female", "prefer not to say")
# p santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# p santas << Santa.new("N/A", "N/A")

#Driver code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_cookies =["oreo", "cookie", "buttermilk"]
example_genders.length.times do |i|
 puts santas << Santa.new(example_genders[i], example_ethnicities[i])
 puts "There are now #{santas.length} Santas instances in the array"
end

puts "Testing each Santa to see if we have a great diverse group..."

santas.each do |santa|
	santa.speak
end


# example_cookies.length.times do |i|
# 	puts santas <<
# santas.each do |santa|
# 	santa.eat_milk_and_cookies(example_cookies)
# end

