require './database'
require './contact'
require './main_menu'

class User

	def initialize
		$database = Database.new
		@main_menu = MainMenu.new	
		run
	end

	def run
			@main_menu.run
			end_program
	end


	def end_program
		puts "\e[H\e[2J"
		puts "Goodbye"
	end

end

user = User.new
