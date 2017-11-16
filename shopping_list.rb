# Initialize variables
available_items = ['juice', 'avocado', 'eggs', 'steak', 'pepper', 'onion', 'potatoes'] # Hard coded variable
shopping_list = [] # current shopping list
menu = """MENU:
1: View Shopping List
2: Add Item
3: Remove Item
4: Quit
> """

# Define a function to print a list to the console
def print_list(list)
	list.each do |x|
		puts "> " + x
	end
end

# Define a function to check user input
def check_item(item, list)
	until list.include?(item) # Does the list include the item?
		if item != ""
			puts "Invalid entry."
			print "Please select a valid item or press <enter> to go back: "
			item = gets.chomp.downcase
		else
			break # user hit <enter>
		end
	end
	return item
end

# Define a function to get the total cost
def get_cost(list)
	# Define a hash to include prices of all items
	item_cost = {juice: 3.99, avocado: 2.50, eggs: 3.49, steak: 9.99, pepper: 0.75, onion: 1.00, potatoes: 1.25}
	cost = 0 # Initial cost
	if list.length > 0
		list.each do |item|
			cost += item_cost[item.to_sym] # Add all items in the list to the cost variable
		end
		puts "Total: $#{cost}"
		return cost
	else
		puts "Your shopping list is empty."
	end
end

# Ask user for the first action
print menu
action = gets.chomp

# Enter the while loop
while true
	# Create case list for action
	case action
	when "1" # View shopping list
		puts "----- Current Shopping List -----"
		print_list(shopping_list)
		puts "---------------------------------"
	when "2" # Add item to shopping list
		puts "----- Available Items -----"
		print_list(available_items)
		puts "-------------------------"
		print "Enter the item you would like to add or press <enter> to go back: "
		item = check_item(gets.chomp.downcase,available_items) # get user input and check if it is valid
		if item != ""
			shopping_list << available_items[available_items.index(item)] # push item to shopping list
			available_items.delete_at(available_items.index(item)) # remove item from available list
		end
		get_cost(shopping_list) # print cost of shopping list to console
	when "3" # Remove item from shopping list
		puts "----- Current Shopping List -----"
		print_list(shopping_list)
		puts "---------------------------------"
		print "Enter the item you would like to remove or press <enter> to go back: "
		item = check_item(gets.chomp.downcase,shopping_list) # get user input and check if it is valid
		if item != ""
			available_items << shopping_list[shopping_list.index(item)] # push item to available list
			shopping_list.delete_at(shopping_list.index(item)) # remove item from shopping list
		end
			get_cost(shopping_list) # print cost of shopping list to console
	when "4" # Quit the program
		break
	else
		puts "Invalid option. Please enter a valid menu option."
	end
	print menu
	action = gets.chomp
end

