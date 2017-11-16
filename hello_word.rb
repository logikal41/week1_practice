first_name = 'Matt'
last_name = 'Berry'
world = 'world'
first_number = 10
second_number = 2.0

puts first_name
puts last_name
puts world
puts first_number
puts second_number

# The puts command will always have a new line after the output value
# The print command will do the same thing as puts but won't add the new line.

# "gets" stops the script and waits for user input which will be passed to the vairable
user_input = gets
first_name = gets
last_name = gets

# Arrays
number_array = []
number_array << 1 # pushes or appends 1 to the array
number_array << 2 # pushes or appends 2 to the array
number_array << 50 # pushes or appends 50 to the array
puts number_array # prints the array to the console and adds a new line

# Retrieving specific values from the array
number_array.first # first item in array
number_array.last # last item in array
number_array[0] # item at index 0
number_array[1] # item at index 1
number_array[2] # item at index 2
number_array[3] # returns 'nil' since there is only 3 items in the array
