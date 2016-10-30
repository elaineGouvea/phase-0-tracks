#Interview with the Vampire

require 'date'

puts "What's your name?"
employee_name = gets.chomp

puts "How old are you?"
informed_age = gets.chomp

puts "What year were you born?"
informed_birth = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
wants_garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (y/n)"
wants_health_insurance = gets.chomp

=begin
To compare the answers to see if the informed_age matches the informed_birth:
- Transformed the strings into integer;
- Required a date method, to be able to get the current year;
- Subtracted the informed_birth from the current year.
- Created a condition to check if the value of the operation above is equal to informed_age.
=end

informed_age = informed_age.to_i
informed_birth = informed_birth.to_i

age = Date.today.year - informed_birth
puts "Oh, your age is: #{age}"

if informed_age == age
	is_age_correct = true
else 
	is_age_correct = false
end
# p "is_age_correct: #{is_age_correct}"

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


#Conditions to create the Vampire Detecting logic:
#result = " "	

result = if is_age_correct && (garlic || health_insurance)
	puts "Probably not a vampire."
elsif !is_age_correct && !(garlic || health_insurance)
	puts "Probably a vampire."
elsif !is_age_correct && !garlic && !health_insurance
	puts "Almost certainly a vampire."
# elsif employee_name == "Drake Cula" || "Tu Fang"
# 	puts "Definitely a vampire."
else 
	puts "Result inconclusive."
end



