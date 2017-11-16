# The main class / App runs the casino and holds all the user data
# Casino class / multiple games are part of this or are their own classes???

# Create App class
class App
	attr_accessor :user, :bankroll
	
	# Initialize App object
	def initialize
		print "Enter the players name: "
		@user = gets.chomp
		print "How much money is #{user} starting with? "
		@bankroll = gets.to_i
		casino
	end

	# Instance method for printing menu and getting user input
	def menu
		print """Select Game:
1. Slots
2. High / Low
3. Exit Casino
> """
		action = gets.chomp
	end

	# Instance method to start up the casino
	def casino
			action = menu
			# case list
			case action
			when "1"                          # Play slots
				#@store.print_inventory
			when "2"                          # Play High / Low
				#@store.print_inventory        	
			when "3"                          # Exit the program
				return "Cashing out."
			else                              # Error handling
				puts "Invalid option. Please enter a valid menu option."
			end
		casino                                # call itself again (recursion to avoid while loop)
	end

end












#------ Basic Objectives: ------

#Start game player has a name and an initial bankroll
#Player can go to different games via menu
#Slots
#High / Low
#Player places bet and wins / loses (hint: rand)
#Player's bankroll goes up and down with wins and losses

#------ Bonus Objectives: -------

#Ability to move to and from games
#Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
#Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
#The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
#Find ASCII Art and put it into your games/menus to make it more fun for the end user
#Ability to switch players (player menu, bankroll information)
#Player's bankroll persists while moving from game to game
#Player's bankroll persists if you switch to different players
#Random events occur when changing games that can increase or decrease player's bankroll
#Roulette
#Craps
#Build a card deck (hint: this is in today's lesson content)
#Card games (Blackjack, Poker, Casino War, etc...)
#Any other Casino game you can think of
#Create your own game