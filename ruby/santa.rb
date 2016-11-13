class	Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
		reindeer_position = @reindeer_ranking.index(reindeer_name)
		bad_reindeer = @reindeer_ranking.slice!(reindeer_position)
		return @reindeer_ranking << bad_reindeer
	end
end

# Driver code
santa = Santa.new("female","Latina")
puts "Should return reindeer_position (index)"
# puts santa.get_mad_at("Dancer") == 2
# puts santa.get_mad_at("Dancer") == "Dancer"
puts santa.get_mad_at("Dancer")[-1] == "Dancer"

puts "should age santa in one year"
puts santa.celebrate_birthday

puts "Should allow change gender outside the method"
santa.gender = "bigender"
puts santa.gender == "bigender"

puts "Should allow to return age outside the method"
puts santa.age == 1

puts "Should allow to return ethnicity outside the method"
puts santa.ethnicity == "Latina"

#Release 4 - create Lots of Santas

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do 
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts new_santa.speak
end

# santa.speak
# santa.eat_milk_and_cookies("oreo")
