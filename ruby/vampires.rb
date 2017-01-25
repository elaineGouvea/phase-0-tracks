#Interview with the Vampire

require 'date' #import date method

def survey_session(times) #Method to process nultiple employees - Release 3
	counter = 0
	while counter < times # Loop to call survey_form according to times
		survey_form # Call the method survey_form
	counter +=1
	end
	times
end

def survey_form
	puts "What's your name?"
	employee_name = gets.chomp

	# To compare the answers to see if the informed_age matches the informed_birth:
	puts "What will be your age at the last day of this year?"
	informed_age = gets.chomp.to_i #convert input to integer

	puts "What year were you born?"
	informed_birth = gets.chomp.to_i 
	age = Date.today.year - informed_birth #get current year 

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	wants_garlic = nil # 1.initialize variable to use on loop

	# Create loop to check if input is valid
	until wants_garlic == 'y' || wants_garlic == 'n'
		wants_garlic = gets.chomp.downcase #use .downcase to make input "case insensitive"
		if wants_garlic == 'y' 
			garlic = true #boolean to validate conditions
		elsif wants_garlic == 'n'
			garlic = false
		else
			puts 'Option invalid! Please, answer with "y" or "n".' #Alert msg.
		end
	end

	p garlic

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	wants_health_insurance = nil
		
	until wants_health_insurance == 'y' || wants_health_insurance == 'n'	
		wants_health_insurance = gets.chomp.downcase
		if wants_health_insurance == 'y' 
			health_insurance = true
		elsif wants_health_insurance == 'n'
			health_insurance = false
		else
			puts 'Option invalid! Please, answer with "y" or "n".'
		end
	end
 	 
	# Release 4: Check Allergies
	puts "Name any allergies, one at a time. You should type “done” when finished."
	allergy = nil
	is_vampire_detected = false # Boolean to check if vampire is detected through suspect allergies.

	# Loop to name allergies, break if "done". If the allergy is "sunshine", skip to the result of "Probably a vampire."
	until allergy == "done"
		allergy = gets.chomp.downcase
		if allergy == "sunshine"
			is_vampire_detected = true
		end
	end

	# Detect a vampire through allergies
	if is_vampire_detected 
		puts "Probably a vampire." 
	end

	# Case vampire is not detected through allergies:
	if !is_vampire_detected 
		# Compare to see if informed age is equal actual age
		if informed_age == age
			is_age_correct = true
		else 
			is_age_correct = false
		end

		#Vampire Detecting logic:

		vampire_level = nil #variable to be updated so that the result can be based on the latest condition matched.

		#Evaluating the conditions:
		if is_age_correct && ( garlic || health_insurance )
			vampire_level = 0
		end

		if !is_age_correct && ( !garlic || !health_insurance )
			vampire_level = 1
		end

		if !is_age_correct && !garlic && !health_insurance
			vampire_level = 2
		end

		if employee_name == "Drake Cula" || employee_name == "Tu Fang"
			vampire_level = 3
		end
	
		#Analyzing Vampire Detection result through vampire_level:
		if vampire_level == 0
			puts "Probably not a vampire."
		elsif vampire_level == 1
			puts "Probably a vampire."
		elsif vampire_level == 2
			puts "Almost certainly a vampire."
		elsif vampire_level == 3
			puts "Definitely a vampire."
		else
			puts "Result inconclusive."
		end
	end
	puts "====================================================="
end

# Release 3: Process Multiple Employees
puts "How many employees will be processed?"
number_employees = gets.chomp

times = number_employees.to_i

survey_session(times) #call the method survey_session, passing the argument of times 

# Release 5: Plot Twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

