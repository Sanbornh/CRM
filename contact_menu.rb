# Displays options available when adding 
# a new contact. 

# !! INHERITS BEHAVIOUR FROM MENU AND
# IS CLOSELY COUPLED. YOU NEED TO KNOW
# WHAT'S GOING ON IN MENU TO MODIFY CONTACTMENU 
# !!

require './contact'

class ContactMenu

	def initialize
		@menu = [

			"\e[H\e[2J",
			"What attributes would you like to include?",
			"1. Name",

		]
	end

	def run(contact)
		@contact = contact
		display_menu
		get_input
		perform_request
	end

	def display_menu
		puts @menu
	end

	def get_input
		@usr_request = gets.chomp.to_i
	end


	def perform_request
		if @usr_request == 1 then assign_name end
	end

	def assign_name
		puts "Name (x: Steve Smith)"
		@contact.set_name
	end

end