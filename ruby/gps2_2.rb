# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty grocery_list hash
  # set default quantity
    #one
  # print the list to the console with print list method
# output: grocery_list hash

# Method to add an item to a list
# input: list, item_name, and optional quantity
# steps:
  # key is item_name; value is the optional quantity 
  # grocery_list[:item_name] ="quantity"
# output: modified grocery list hash

# Method to remove an item from the list
# input: list, item_name
# steps:
  # Access grocery_list and the item use .delete(item_name)

# output: modified grocery_list with less item(s) 

# Method to update the quantity of an item
# input: list, item_name, quantity
# steps:
  # Access grocery_list and the item. Then reassign the quantity value
# output: modified grocery_list with an updated quantity 

# Method to print a list and make it look pretty
# input: grocery_list, item_name, quantity 
# steps: 
  # iterate through each key value pair of the hash
  # print each item_name and quantity using interpolation in a string
# output: pretty hash printed