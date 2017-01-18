# Release 0

class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

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

# Release 2

class Kittens

  def initialize
    puts "creating kittens!"
  end

  def purr 
    puts "purr, purr, purr"
  end

  def licks
    puts 'licks'
  end

  def meows
    puts 'meow.'
  end

end

# DRIVER CODE

kitten_array = 50.times.collect {Kittens.new}
puts kitten_array

kitten_array.each {|k| k.purr}

kitten_array.each {|k| k.licks}

kitten_array.each {|k| k.meows}

