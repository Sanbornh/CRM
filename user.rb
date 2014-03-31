require './database1'
# require './contact'
require './main_menu'
require 'yaml'

class User

	def initialize
		$database = Database.new
		@main_menu = MainMenu.new	
		run
	end

	def run
			@main_menu.run
			# binding.pry
			end_program
	end


	def end_program
		save_logfile
		puts "\e[H\e[2J"
		puts "Goodbye"
	end

	def save_logfile
		generate_log
		yaml = YAML.dump(@log)
		log = File.open("./log.txt", 'w')
		log.write(yaml)
	end

	def generate_log
		@log = {

			id: Contact.get_id,
			database: $database.contacts

		}
	end
end

user = User.new
