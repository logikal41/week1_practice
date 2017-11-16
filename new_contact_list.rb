# UPDATED SOLUTION to the contact_list assignment using the information we learned today

# Initialize some variables
contacts = [] # contact list
menu = """MENU:\n1: Add Contact\n2: View Contacts\n3: Edit Contacts\n4: Delete Contact\n5: Quit\n> """

# Define a function to enter a contact
def getContact
	print "Enter first name: "
	first = gets.chomp
	print "Enter last name: "
	last = gets.chomp
	print "Enter the 10 digit phone number: "
	phone_number = gets.chomp
	while phone_number.length != 10
		print "Please enter a valid 10 digit phone number: "
		phone_number = gets.chomp
	end
	print "Enter the street address: "
	street_address = gets.chomp
	print "Enter the city: "
	city = gets.chomp
	print "Enter the state: "
	state = gets.chomp
	print "Enter the 5 digit zipcode: "
	zipcode = gets.chomp
	while zipcode.length != 5
		print "Please enter a valid 5 digit phone zipcode: "
		zipcode = gets.chomp
	end
	# Create the contact hash
	contact ={ first_name: first, last_name: last, phone_number: phone_number, \
		street_address: street_address, city: city, state: state, zipcode: zipcode }
end

# Define a function to print the current list to the console
def printList(list)
	puts "**** Contact List ****"
	puts ""
		list.each_with_index do |contact, i| # Print out each contact in the below format
			print (i+1).to_s + ". "
			puts "Name: #{contact[:first_name]} #{contact[:last_name]}, Phone Number: (#{contact[:phone_number][0..2]})#{contact[:phone_number][3..5]}-#{contact[:phone_number][6..9]}" 
			puts "   Address: #{contact[:street_address]} #{contact[:city]}, #{contact[:state]} #{contact[:zipcode]}"
			puts ""
		end
	puts "**********************"
end

# Define a function to edit the contact
def editContact(contact)
	contact.each do |key, value| # This each loop method allows you to update the values of keys
		puts "#{key}: #{value}"
		print "Hit <enter> to keep OR type in the new entry: "
		entry = gets.chomp
		if entry != ""
			contact[key.to_sym] = entry # turn the key string into a symbol
			puts "Changes saved."
		else
			puts "No changes."
		end
	end
	return contact
end

# Get first action
print menu
action = gets.chomp

# Enter the while loop
while true
	case action
	when "1" # Add contact
		contacts << getContact
	when "2" # View contacts
		printList(contacts)
	when "3" # Edit contact
		print "Enter the index of the contact you want to edit: " # get the index of the contact
		item = gets.to_i - 1
		contacts[item] = editContact(contacts[item])
	when "4" # Delete contact
		printList(contacts)
		print "Enter the index of the contact you want to delete: " # get the index of the contact
		item = gets.to_i - 1
		contacts.delete(contacts[item]) # Delete item at index "item"
	when "5"
		break # exit the program
	else
		puts "Invalid option. Please choose a valid menu option."
	end
	print menu
	action = gets.chomp
end

# ---------- BONUS ITEMS -----------
#3.  Keep program running without a while loop


