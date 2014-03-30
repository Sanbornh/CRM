require './attribute_menu'

class ModifyMenu

	def initialize
		@mainmenu = [

			"\e[H\e[2J",
			"Choose contact by?",
			"1. First name",

		]

		@attribute_menu = [

			"Edit...",
			"1. Name",

		]
	end

	def run
		display(@mainmenu)
		get_request
		perform_request
		@contact.display
		attribute_menu = AttributeMenu.new(@contact)
		attribute_menu.run
	end

	def display(menu)
		puts menu
	end

	def get_request
		@usr_request = gets.chomp.to_i
	end

	def perform_request
		if @usr_request == 1 then get_by_frst_name end	
	end

	def get_by_frst_name
		puts "\e[H\e[2J"
		puts "Enter Contact's First Name"
		@contact = $database.find(gets.chomp.upcase)
	end


end