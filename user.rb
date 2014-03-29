require './database'
require './contact'
require './main_menu'

class User

	def initialize
		@database = Database.new
		@main_menu = MainMenu.new	
		@main_menu.display
	end

	def get_integer
		gets.chomp.to_i
	end

	def get_string
		gets.chomp.split(" ")
	end

	def main_input
		main_menu
		main_controller(get_integer)
	end

	# def main_menu
	# 	puts "\e[H\e[2J"
	# 	puts "---- Main Menu ----".center(25)
	# 	puts "1. Add new Contact"
	# 	puts "0. QUIT"
	# end

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
