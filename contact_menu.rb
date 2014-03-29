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
			"2. Note",

		]
	end

	def run(contact)
		@contact = contact
		while true
			display_menu
			get_input
			perform_request
		end
	end

	def display_menu
		puts @menu
	end

	def get_input
		@usr_request = gets.chomp.to_i
	end


	def perform_request
		if @usr_request == 1 then assign_name end
		if @usr_request == 2 then add_note end
	end

	def assign_name
		print "Name (x: Steve Smith): "
		@contact.set_name
	end

	def add_note
		puts "Enter Note:"
		@contact.new_note
	end

end



