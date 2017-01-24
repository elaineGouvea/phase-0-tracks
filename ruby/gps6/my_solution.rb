# Virus Predictor

# I worked on this challenge with: Peter Menniti.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# This will look for a file of the name given in the same directory.
# You will be able to run code from that file in your file as if it were in the same file.
require_relative 'state_data'

class VirusPredictor
  # Initializes the parameters passed when we call .new to create a new instance of the VirusProtector class: values for state, population & density from inputs
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  # calls the 3 private methods to:
  # calculate the number of deaths
  # calculate the speed of spread
  # print them to the console in a sentence
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print_effects(number_of_deaths, speed)
  end

  private
  # calculates the number of predicted deaths based on population and population density
  # decides a factor based on population density then multiplies that by population and rounds to get answer
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
    (@population * factor).floor
  end
  
  # calculates the speed of spread based on population density
  # picks a speed based on the density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case 
    when @population_density >= 200
      speed = 0.5
    when @population_density >= 150
      speed = 1
    when @population_density >= 100
      speed = 1.5
    when @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
    speed
  end
  
  # arranges the state, number of deaths and speed of spread into a sentence and prints
  # speed of spread and number of deaths is input not calculated in line
  def print_effects(number_of_deaths, speed)
    puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, data|
  VirusPredictor.new(state_name, data[:population_density], data[:population]).virus_effects
end

=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The first hash syntax uses the Hash rocket notation: {"key" => "value"} with the key as a string. The second one uses the syntactic sugar to the symbol notation: {key: "value"}. Using symbols is better in therms of memory and performance. This second notation is easier to read (dry), but it may not work with some older versions than Ruby 1.9. Also, it is not valid if your key is not a symbol. In case you need a key that is not a symbol, you should go with the first syntax option.  
# What does require_relative do? How is it different from require?
  # It’s best practice to write programs in different files, break the code by logical grouping. Require-relative is a way to include other files in Ruby. The difference between require and require_relative is that require method allows us to include files from anywhere while require_relative just gets files that are located relatively to our file - at the same directory.
# What are some ways to iterate through a hash?
  # each, map, select..
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # First, that the code was passing some instance variables as method parameters. Instance variables can be used thoughout the methods inside the same class, because they belong to the class itself. 
  # Another thing that call our attention was the expressions to calculate predicted_deaths could be written once and used in all conditionals. 
  # Third, case statements seemed to be more dry than if/else statements to use in speed_of_spread method.
# What concept did you most solidify in this challenge?
  # How to iterate through a hash;
  # Understand how nested data structures work (how to access them, to iterate through them, etc.);
  # Refactor to DRY my code.