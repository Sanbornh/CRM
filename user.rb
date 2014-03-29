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
		@main_menu.run
	end

	def get_string
		gets.chomp.split(" ")
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


end

user = User.new
