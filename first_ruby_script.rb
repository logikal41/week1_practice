# Create global variables
prompt = "> "
action = ""
item = ""
todo = []
menu = "MENU: \n\
1: Add Item \n\
2: View List \n\
3: Edit Item \n\
4: Delete Item \n\
5: Quit \n"

# Define a function to print the current list to the console
def printList(list)
	puts "____CURRENT LIST____"
		list.each do |x|
			puts (list.index(x)+1).to_s + ". " + x
		end
	puts "____CURRENT LIST____"
end

# Ask user for the first action
print menu + prompt
action = gets.chomp

# Enter the while loop
while true
	# Create case list for action
	case action
	when "1" #Add new item to list
		print "Enter an item to add your todo list: "
		todo << gets.chomp # push item to todo list
	when "2" # Print current list to console
		printList(todo)
	when "3" # Edit an item in the list
		printList(todo)
		print "Enter index of item to edit: "
		item = (gets.chomp).to_i - 1 # -1 because list starts at 1
		print "Enter a new entry: "
		todo[item] = gets.chomp # Edit the entry at index "item" in place
	when "4" # Remove an item from the list
		if todo.length > 0
			printList(todo)
			print "Enter index of item to remove: "
			item = (gets.chomp).to_i - 1 # -1 because list starts at 1
			todo.delete(todo[item]) # Delete item at index "item"
		else
			puts "There are no items in the list to remove"
			print menu + prompt
			action = gets.chomp
		end
	when "5" # Quit the script
		break
	else
		puts "Invalid option. Please enter a valid menu option."
	end
	print menu + prompt
	action = gets.chomp
end