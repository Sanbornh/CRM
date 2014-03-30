require './database'
# require './contact'
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
		save_logfile
		puts "\e[H\e[2J"
		puts "Goodbye"
	end

	def save_logfile
		generate_log
		File.write('./log.txt', @log)
	end

	def generate_log
		@log = {

			id: 9,
			database: $database.contacts
		}
	end
end

user = User.new
