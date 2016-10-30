#Interview with the Vampire

require 'date' #import date method

def survey_session(times)
	counter = 0
	while counter < times
		survey_form
	counter +=1
	end
	times
end

def survey_form
	puts "What's your name?"
	employee_name = gets.chomp

# To compare the answers to see if the informed_age matches the informed_birth:
	puts "How old are you?"
	informed_age = gets.chomp.to_i #convert input to integer

	puts "What year were you born?"
	informed_birth = gets.chomp.to_i 
	age = Date.today.year - informed_birth #get current year 

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	wants_garlic = gets.chomp

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	wants_health_insurance = gets.chomp


	if informed_age == age
		is_age_correct = true
	else 
		is_age_correct = false
	end

	if wants_garlic == "y" 
		garlic = true
	else 
		garlic = false
	end

	if wants_health_insurance == "y" 
		health_insurance = true
	else 
		health_insurance = false
	end

	#Vampire Detecting logic:
	#result = " "	

	result = if is_age_correct && (garlic || health_insurance)
		puts "Probably not a vampire."
	elsif !is_age_correct && !(garlic || health_insurance)
		puts "Probably a vampire."
	elsif !is_age_correct && !garlic && !health_insurance
		puts "Almost certainly a vampire."
	elsif employee_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
	else 
		puts "Result inconclusive."
	end
end

puts "How many employees will be processed?"
number_employees = gets.chomp

times = number_employees.to_i

survey_session(times)


