# Displays options available when adding 
# a new contact. 

# require './contact'

class ContactMenu

	def initialize
		@done = false
		@menu = [

			"\e[H\e[2J",
			"What attributes would you like to include?",
			"1. Name",
			"2. Note",
			"0. Return to Main Menu",

		]
	end

	def run(contact)
		@contact = contact
		while !@done
			display_menu
			get_request
			perform_request
		end
	end

	def display_menu
		puts @menu
	end

	def get_request
		@usr_request = gets.chomp.to_i
	end


	def perform_request

		case @usr_request
		when 1 then assign_name
		when 2 then add_note
		when 0 then save_and_exit
		end
		
	end

	def assign_name
		puts "\e[H\e[2J"   # Clears terminal window
		puts "Name (x: Steve Smith): "
		@contact.set_name
	end

	def add_note
		puts "\e[H\e[2J"	 # Clears terminal window
		puts "Enter Note:"
		@contact.new_note
	end

	def save_and_exit
		@done = true
		$database.add_to_database(@contact)
	end

end













