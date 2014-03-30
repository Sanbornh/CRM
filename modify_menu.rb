class ModifyMenu

	def initialize
		@menu = [

			"\e[H\e[2J",
			"Choose contact by?",
			"1. First name",

		]
	end

	def run
		display_menu
		get_request
		perform_request
	end

	def display_menu
		puts @menu
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
		binding.pry
	end


end