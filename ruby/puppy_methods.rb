class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

	def speak(bark_number)
		i = 0
		until i == bark_number
			puts "Woof!"
		i += 1
		end
	end  

	def roll_over
		puts '*rolls over*'
	end

	def dog_years(human_years)
		puts human_years * 7
	end

	def hand_shake
		puts "*gives paw*"
	end
end

fido = Puppy.new

fido.fetch("ball")

fido.speak(3)

fido.roll_over

fido.dog_years(6)

fido.hand_shake




