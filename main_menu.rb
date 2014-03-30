require './contact_menu'
require './modify_menu'
require './contact.rb'


class MainMenu

	#attr_accessor :contact

	def initialize
		# binding.pry
		# @contact = Contact.new
		@done = false
		@menu = [

			"\e[H\e[2J",
			"---- Main Menu ----".center(25),
		  "1. Add New Contact",
		  "2. Display Contacts",
		  "3. Modify A Contact",
			"0. QUIT",	

		]
	end

	def run
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
		if @usr_request == 1 
			add_contact
		elsif @usr_request == 2 
			display_contact 
		elsif @usr_request == 3 
			modify_contact
		elsif @usr_request == 0 
			@done = true 
		end
	end

	def add_contact
		# binding.pry
		@contact_menu = ContactMenu.new
		contact = Contact.new
		@contact_menu.run(contact)
	end

	def display_contact
		puts "\e[H\e[2J"	 # Clears terminal window
		$database.display
		puts "\nReturn to main menu? (Enter)"
		gets.chomp
	end

	def modify_contact
		@modify_menu = ModifyMenu.new
		@modify_menu.run
	end

end












