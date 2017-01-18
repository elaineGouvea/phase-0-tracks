# Release 0

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	(number).times do |i|
  	puts "Woof!"
  	end 
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	puts human_age * 7 
  end

  def sit
  	puts "*sitting*"
  end
end

# DRIVER CODE

fido = Puppy.new
fido.fetch("bone")
fido.speak(6)
fido.roll_over
fido.dog_years(8)
fido.sit

