class User

	def initialize
		get_input
	end

	def main_menu
		puts "\e[H\e[2J"
		puts "---- Main Menu ----".center(25)
		puts "1. Add new Contact"
	end

	def get_input
		main_menu
		puts gets.chomp.to_i

	end

end

user = User.new