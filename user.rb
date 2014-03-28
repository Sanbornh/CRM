class User

	def initialize
		get_input

	end

	def main_menu
		puts "\e[H\e[2J"
		puts "---- Main Menu ----".center(25)
		puts "1. Add new Contact"
		puts "0. QUIT"
	end

	def get_input
		main_menu
		perform(gets.chomp.to_i)
	end

	def perform(user_request)
		if user_request == 1 then add_contact end
		if user_request == 0 then end_program end
	end

	def end_program
		puts "\e[H\e[2J"
		puts "Goodbye"
	end
end

user = User.new