def status
	puts "Status message: "
	yield
	puts "Another status message."
end

status { puts "This is an yield message"}

colors = ["blue", "yellow", "red"]

food = {"banana" => 3.70, "apple" => 0.95, "pear" => 1.25}


p colors #Print the array
colors.each { |i| puts "The color is: #{i}"}
p colors # Print  the array after .each


p food # Print the hash
food.each { |x, y| puts "The #{x} costs #{y}"}
p food # Print the hash after .each

p colors # Print the array
colors.map! do |i| puts i 
	i.capitalize
end

p colors # Print the array after .map!

p food
p new_food = {}

new_food = food.map do |x, y| puts x
		x.upcase
end
p food
p new_food