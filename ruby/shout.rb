module	Shout
	def yell_angrily(words)
		words.upcase + "!!!" + " :("	
	end

	def yell_happily(words)
		words + "!!!" + " :)"
	end
end

class Drunk_person
	include Shout
end

class Spoiled_prat
	include Shout
end

# DRIVER CODE
drunk = Drunk_person.new
p drunk.yell_happily("I'm singing in the rain... I'm singing in the rain")
p drunk.yell_angrily("Who drunk my beer?? Grrrhh")

prat = Spoiled_prat.new
p prat.yell_happily("I'm awesome! Give me attention")
p drunk.yell_angrily("pay attention to me")

# Release 1:
# module	Shout
# 	def self.yell_angrily(words)
# 		words.upcase + "!!!" + " :("	
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# # DRIVER CODE
# puts "Expect to upcase the arguments and add '!!! :(' in the end:"
# p Shout.yell_angrily("I still don't get the self keyword")

# puts "Expect to add '!!! :)' after the argument:"
# p Shout.yell_happily("Modules are sweet")