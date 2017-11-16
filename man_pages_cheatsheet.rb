# Initialize some variables
menu = """MENU: \n1: Command Options\n2. Manual Command Entry\n3: Search Commands\n4: Exit\n> """
options =["mv","cp","mkdir","ls","rm","touch"]

# Define a function to print the option list to the console
def printList(list)
	puts "**** Options ****"
		list.each_with_index do |x, i|
			puts (i+1).to_s + ". " + x
		end
	print "> "
end

# Get first action
print menu
action = gets.chomp

# Enter the while loop
while true
	case action
	when "1" # Command Line
		printList(options)
		item = gets.chomp
		puts `man #{item}`
	when "2" # Manual command entry
		print "What command do you want to open a man page for? "
		item = gets.chomp
		puts `man #{item}`
	when "3" # Search
		print "What would you like to search for? "
		item = gets.chomp
		puts `apropos #{item}`
	when "4" # Exit the program
		break
	else
		puts "Invalid option. Please choose a valid menu option."
	end
	print menu
	action = gets.chomp
end

# ---------- Bonus -----------
# Allow the user to input a search term and output the result of the man page for that search term

# Is there a better way to search the man pages other than the "apropos" command??