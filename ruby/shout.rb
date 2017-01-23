module	Shout
	def self.yell_angrily(words)
		words.upcase + "!!!" + " :("	
	end

	def self.yell_happily(words)
		words + "!!!" + " :)"
	end
end

# DRIVER CODE
# Release 1:
puts "Expect to upcase the arguments and add '!!! :(' in the end:"
p Shout.yell_angrily("I still don't get the self keyword")

puts "Expect to add '!!! :)' after the argument:"
p Shout.yell_happily("Modules are sweet")