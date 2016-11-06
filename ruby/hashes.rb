# Interior Design - Client Form:
# - Prompt form fields:
# 	- name;
# 	- address;
# 	- email;
# 	- phone;
# 	- age;
# 	- number_of_children;
# 	- decor_theme;
# 	- preferences;
# 	- dislikes;
# 	- color_scheme
# - Get the input as symbols to increment the hash;
# - Convert the input to the appropriate data type;
# - Update a key;
# - Create a loop to give the opportunity for the user to change one input.

#There's a simpler solution, using just loop do + break on the interface.
def change_info(field, form)
	i = 0
	unless field == "none"
		puts "Write the correct #{field}"
		input = gets.chomp
		form[field] = input
		i += 1
	end
end

#method that is not working. Refactor later!
# def colors(colors_list, form)
# 	colors_list = []
# 	until colors_list.include? "done"
# 		colors_list << gets.chomp
# 	end
# 	colors_list.pop

# 	form["color_scheme"] = colors_list 
# end

form = {}

#USER INTERFACE
puts "name:"
form["name"] = gets.chomp
p form["name"]

puts "email:"
form["email"] = gets.chomp

puts "phone:"
form["phone"] = gets.chomp.to_i

puts "age:"
form["age"] = gets.chomp.to_i

puts "number_of_children:"
form["number_of_children"] = gets.chomp.to_i

puts "decor_theme:"
form["decor_theme"] = gets.chomp

puts "preferences:"
form["preferences"] = gets.chomp

puts "dislikes:"
form["dislikes"] = gets.chomp

puts "Write down the colors you would like to use in your decor. When finished, write 'done'"

colors_list = []
until colors_list.include? "done"
	colors_list << gets.chomp
end
colors_list.pop

form["color_scheme"] = colors_list 

puts "Review info:", form


puts "Do you need to change any info? 
If yes, write the field name (or type 'none' for quit):"
field = gets.chomp
	
change_info(field, form)

puts form