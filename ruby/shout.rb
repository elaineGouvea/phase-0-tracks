module Shout
  def self.yell_angrily(words)
    p words + "!!!" + " :("
  end

  def self.hello
  	puts 'hi'
  end

	def self.yell_happily(phrase)
		p phrase + "!!!" + " :)"
	end
end

# Driver code:
 # print out the modules 
 Shout.hello
 Shout.yell_angrily("Why time goes by so fast???")
 Shout.yell_happily("I made it!")

