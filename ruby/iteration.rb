# Collections:
colors = ["blue", "yellow", "red"]
food = {"banana" => 3.70, "apple" => 0.95, "pear" => 1.25}
numbers = [1, 6, 4, 27, 52]

# Release 0
puts "Using a method that takes a block"
def status
	puts "Status message: "
	yield
	puts "Another status message."
end

status { puts "This is an yield message"}
puts

# Release 1
puts "Iterating through an array"
p colors #Print the array
colors.each { |i| puts "The color is: #{i}"}
p colors # Print  the array after .each
puts

puts "Iterating through a hash"
p food # Print the hash
food.each { |x, y| puts "The #{x} costs #{y}"}
p food # Print the hash after .each
puts

puts "Changing an array to capitalize its elements"
p colors # Print the array
colors.map! do |i| puts i 
	i.capitalize
end
p colors # Print the array after .map!
puts 

puts "Iterating through a hash to upcase its values and store it into a new array"
p food
p new_food = nil
new_food = food.map do |x, y| puts x
		x.upcase
end
p food
p new_food
puts 

# Release 2
puts "Calling Methods"
def del_items(collection)
	if collection.is_a? Array
		p collection # Prints the array
		collection.delete_if { |x| x < 5 }
		p collection # Prints the modified array
	else
		p collection # Prints the hash
		collection.delete_if { |x, y| y < 1 }
		p collection # Prints the modified hash
	end
end

def filter_items(collection)
	if collection.is_a? Array
		p collection
		collection.select! {|x| x > 5}
		p collection
	else	
		p collection
		collection.select! {|x, y| y < 2}
		p collection
	end
end

def new_filter_items(collection)
	if collection.is_a? Array 
		p collection	
		collection.reject! { |x| x > 5 }
		p collection
	else
		p collection
		p new_collection = nil
		new_collection = collection.collect do |x, y|
			if y > 3
				y = 0.30
			else
				y
			end
		end
		p collection
		p new_collection
	end
end

def remove_until(collection)
	p collection
	p new_collection = []
	new_collection = collection.take_while { |x| x < 10}
	p collection
	p new_collection
end


# Driver code - Call Methods
# - Passing an array:
# del_items(numbers)
# filter_items(numbers)
new_filter_items(numbers)
# remove_until(numbers)
# - Passing a hash:
# del_items(food)
# filter_items(food)
# new_filter_items(food)





