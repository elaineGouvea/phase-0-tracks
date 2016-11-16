# Virus Predictor

# I worked on this challenge with: Tim Deel & Davina Pasiewics (our precious Guide)
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative accesses files in the same directory
# Require allows external resource and requires the full path for directory
require_relative 'state_data'

class VirusPredictor

  #runs on initialization, takes arguments of State of origin, population and population density.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #Calls predicted deaths and spread rate of virus.
  def virus_effects
    predicted_deaths 
    speed_of_spread
  end

 private 

  #Calculates predicted deaths based on population density and then prints results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end
    number_of_deaths =  (@population * num).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Calculates spread rate of virus based on population density and prints results.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_info|
  state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state.virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section