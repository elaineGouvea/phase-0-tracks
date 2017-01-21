# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty grocery_list hash
  # set default quantity
    #one
  # print the list to the console with print list method
# output: grocery_list hash

def make_list(items)
  grocery_list = {}
  num = 1
  items_arry = items.split
  items_arry.each { |i| grocery_list[i] = num}
  grocery_list
end

grocery_list = make_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item_name, and optional quantity
# steps:
  # key is item_name; value is the optional quantity 
  # grocery_list[:item_name] ="quantity"
# output: modified grocery list hash

def add_item(list, item_name, quantity)
  list[item_name] = quantity
  list
end

add_item(grocery_list, "banana", 8)

# Method to remove an item from the list
# input: list, item_name
# steps:
  # Access grocery_list and the item use .delete(item_name)
# output: modified grocery_list with less item(s) 

def delete_item(list, item_name)
  list.delete(item_name)
  list
end

delete_item(grocery_list, "pizza")

# Method to update the quantity of an item
# input: list, item_name, quantity
# steps:
  # Access grocery_list and the item. Then reassign the quantity value
# output: modified grocery_list with an updated quantity 

def update_quantity(list, item_name, quantity)
  list[item_name] = quantity
  list
end

update_quantity(grocery_list, "carrots", 5)

# Method to print a list and make it look pretty
# input: grocery_list, item_name, quantity 
# steps: 
  # iterate through each key value pair of the hash
  # print each item_name and quantity using interpolation in a string 
# output: pretty hash printed

def print_list(list)
  list.each { |item, quantity| puts "I need #{quantity} #{item}"}
end

p print_list(grocery_list)