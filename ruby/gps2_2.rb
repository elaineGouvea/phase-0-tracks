# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty grocery_list hash
  # set default quantity
    #one
  # print the list to the console with print list method
# output: grocery_list hash

def make_list(items, num=1)
  grocery_list = {}
  # num = 1
  items_arry = items.split
  items_arry.each { |i| grocery_list[i.to_sym] = num}
  grocery_list
end

# Method to add an item to a list
# input: list, item_name, and optional quantity
# steps:
  # key is item_name; value is the optional quantity 
  # grocery_list[:item_name] ="quantity"
# output: modified grocery list hash

def add_item(list, item_name, quantity)
  list[item_name.to_sym] = quantity
  list
end

# Method to remove an item from the list
# input: list, item_name
# steps:
  # Access grocery_list and the item use .delete(item_name)
# output: modified grocery_list with less item(s) 

def delete_item(list, item_name)
  list.delete(item_name.to_sym)
  list
end

# Method to update the quantity of an item
# input: list, item_name, quantity
# steps:
  # Access grocery_list and the item. Then reassign the quantity value
# output: modified grocery_list with an updated quantity 

def update_quantity(list, item_name, quantity)
  list[item_name.to_sym] = quantity
  list
end

# Method to print a list and make it look pretty
# input: grocery_list, item_name, quantity 
# steps: 
  # iterate through each key value pair of the hash
  # print each item_name and quantity using interpolation in a string 
# output: pretty hash printed

def print_list(list)
  puts "Grocery list:"
  list.each { |item, quantity| puts "- #{quantity} #{item}"}
  puts "-----"
end

# Driver code
# Create a new list:
grocery_list = make_list("carrots apples cereal pizza")

# Add the following items to your list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
# Print the list
print_list(grocery_list)

# Remove the Lemonade from your list
delete_item(grocery_list, "Lemonade")
# Update the Ice Cream quantity to 1
update_quantity(grocery_list, "Ice Cream", 1)
# Print the list
print_list(grocery_list)

# Release 1 tests:
# grocery_list = make_list("carrots apples cereal pizza")
# add_item(grocery_list, "banana", 8)
# delete_item(grocery_list, "pizza")
# update_quantity(grocery_list, "carrots", 5)
# p print_list(grocery_list)
# ===================
# Reflection section:

# What did you learn about pseudocode from working on this challenge?
# It seems that we're spending more time when pseudocoding first, but it saves us time when we think about the approach to solve a problem before starting coding. Specially if the pseudocode is detailed.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Using hash for this challenge seemed the most coherent data type option because we wanted to store a pair of information together in our collection. We would have opted to use an array if the order of the elements in our collection mattered. An array was a great option to separate the initial string with lots of items in it. 

# What does a method return?
# What evaluates in its last executed line.

# What kind of things can you pass into methods as arguments?
# strings, arrays, hashes, blocks... To pass a method as an argument, we should convert it into a block (just found this info). There are 2 categories of arguments: required and optional. We can even pass a different value for an argument with default value. 

# How can you pass information between methods?
# Using parameters when you define your method and passing the info as arguments when you call your method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# How to add, edit and delete items in hashes (I had already forgotten)
# How to set a default value to an argument (passing the value on method's parater)
# Use block to iterate through each element of an array and a hash
# Iterate through a hash to print it in a decent way
# My peer introduced me to .to_sym method
# I still need to practice more dry code, what to look while refactor, etc.