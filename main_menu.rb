require './Menu'


class MainMenu < Menu

	def initialize
		@menu = [

			"\e[H\e[2J",
			"---- Main Menu ----".center(25),
		  "1. Add new Contact",
			"0. QUIT",

		]
	end

	def perform_request
		if @usr_request == 1 then add_contact end
		if @usr_request == 0 then end_program end
	end

	def add_contact
		@contact = Contact.new
	end

	def end_program
		puts "\e[H\e[2J"
		puts "Goodbye"
	end

end