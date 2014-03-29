# Parent class of all menus
# in CRM. Handles functionality shared
# by all menus.

class Menu

	def run(*contact)
		@contact = contact
		display_menu
		@usr_request = get_input
		perform_request
	end

	def display_menu
		puts @menu
	end

	def get_input
		input = gets.chomp
		if input.to_i.to_s == input 
			return input.to_i
		else
			return input
		end
	end
end