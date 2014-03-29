require './database'
require './contact'
require './main_menu'

class User

	def initialize
		@database = Database.new
		@main_menu = MainMenu.new	
		run
	end

	def run
		@main_menu.display
		input = @main_menu.get_input
	end

	def get_string
		gets.chomp.split(" ")
	end

	def main_controller(user_request)
		if user_request == 1 then add_contact end
		if user_request == 0 then end_program end
	end

	def contact_menu
		puts "\e[H\e[2J"
		puts "What attributes would you like to include?"
		puts "1. Name"
	end

	def add_contact
		@contact = Contact.new
		contact_menu
		add_contact_controller(get_integer)

	end

	def add_contact_controller(user_request)
		if user_request == 1 then assign_name end
	end

	def assign_name
		puts "Name (x: Steve Smith)"
		@contact.set_name(get_string)
	end

	def end_program
		puts "\e[H\e[2J"
		puts "Goodbye"
	end
end

user = User.new
