# Release 0: Pseudocode
# Release 1: Initial Solution

# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # split the string into an array
  # set default quantity for the items
  # print the list to the console 
# output: hash with the items(keys) and their ammounts(values).

def create_list(raw_list)
	list ={}
	grocery_list = raw_list.split
	
	grocery_list.each do |item|
		list[item] = 1
	end
	return list 
end
p list = create_list("carrots apples cereal pizza")



# Method to add an item to a list
# input: item name and optional quantity
# steps: push into the hash a new item and its quantity
# output: hash items increased
def add_item(list, item, quantity)
	list[item] = quantity
	list
end
p add_item(list, "carrots", 2)

# Method to remove an item from the list
# input: item name
# steps: call .delete method to the list, passing the item to be deleted as an argument
# output: list of items excluding the item deleted
def delete_item(list, item)
	list.delete(item)
	list
end
p delete_item(list,"carrots")

# Method to update the quantity of an item
# input: pass the list, item and the new quantity
# steps: assign a new quantity to the value of the array
# output: update the quantity of an item
def update_list(list, item, new_quantity)
	list[item] = new_quantity
	list
end
p update_list(list, "apples", 5)

# Method to print a list and make it look pretty
# input: list of groceries
# steps: iterate trough each key&value pair of the hash to print it in a readable way.
# output: List of keys and values printed as 'key': +'value'
def print_list(groceries)
	groceries.each do |key, value|
		puts "#{key}: + #{value}"
	end 
end    

p print_list(list)
puts " "

# Driver Code 
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4

p add_item(list, "Lemonade", 2)
p add_item(list, "Tomatoes", 3)
p add_item(list, "Onions", 1)
p add_item(list, "Ice Cream", 4)
list 

p delete_item(list, "Lemonade")
p update_list(list,"Ice Cream", 1)
p print_list(list)

