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
	puts "What will be your age at the last day of this year?"
	informed_age = gets.chomp.to_i #convert input to integer

	puts "What year were you born?"
	informed_birth = gets.chomp.to_i 
	age = Date.today.year - informed_birth #get current year 

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	wants_garlic = gets.chomp.downcase

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	wants_health_insurance = gets.chomp.downcase

	puts "Name any allergies, one at a time. You should type “done” when finished."
	allergy = ""
	is_vampire_detected = false
	until allergy == "done"
		allergy = gets.chomp.downcase
			if allergy == "sunshine"
				puts "Probably a vampire." 
				is_vampire_detected = true
			end
	end

	if !is_vampire_detected

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

		vampire_detection = nil #variable to be updated so that the result can be based on the latest condition matched.
		vampire_level = ''
		#simplifying the read:
		garlic_or_insurance = garlic || health_insurance 
		garlic_and_insurance = garlic && health_insurance


		#Could not find how to evaluate the result based on the latest condition matched instead of the first! I tried to use 2 variables to update them as each condition is checked but it didn't work...
		 
		if is_age_correct && garlic_or_insurance
			vampire_detection = false
			vampire_level = 0
		elsif !is_age_correct && !garlic_or_insurance
			vampire_detection = false
			vampire_level = 1
		elsif !is_age_correct && !garlic_and_insurance
			vampire_detection = false
			vampire_level = 2
		elsif employee_name == "Drake Cula" || "Tu Fang"
			vampire_detection = true
		else 
			vampire_detection = false
			vampire_level = 3
		end

		if vampire_detection == false 
			if vampire_level == 0
			puts "Probably not a vampire."
			elsif vampire_level == 1
				puts "Probably a vampire."
			elsif vampire_level == 2
				puts "Almost certainly a vampire."
			else vampire_level == 3
				puts "Result inconclusive."
			end
		else
			puts "Definitely a vampire."
		end
	end
end

puts "How many employees will be processed?"
number_employees = gets.chomp

times = number_employees.to_i

survey_session(times)

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

