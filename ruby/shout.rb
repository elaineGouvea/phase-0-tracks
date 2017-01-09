# Release 3
module Shout
	def yell_angrily(onomatopoeia)
		puts onomatopoeia + "!!!"
	end

	def yell_happily(onomatopoeia)
		p onomatopoeia + "!!!" + " :)"
	end
end

class Baby
	include Shout
end

class Monkey
	include Shout
end

# Driver code
baby = Baby.new
monkey = Monkey.new

baby.yell_angrily("Waaaaaah")
baby.yell_happily("Waaaaaah")
monkey.yell_happily("oo-ooh aa-aah")
monkey.yell_angrily("AA-aaaa-AaaHHHhh")

# Release 1
# module Shout
#   def self.yell_angrily(words)
#     p words + "!!!" + " :("
#   end

#   def self.hello
#   	puts 'hi'
#   end

# 	def self.yell_happily(phrase)
# 		p phrase + "!!!" + " :)"
# 	end
# end

# # Driver code:
#  # print out the modules 
#  Shout.hello
#  Shout.yell_angrily("Why time goes by so fast???")
#  Shout.yell_happily("I made it!")

