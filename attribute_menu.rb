class AttributeMenu

	def initialize(contact)
		@contact = contact
		@menu = [

			"Edit...",
			"1. Name",

		]
	end

	def run
		display(@menu)
		get_request
		perform_request
	end

	def display(menu)
		puts menu
	end

	def get_request
		@usr_request = gets.chomp.to_i
	end

	def perform_request
		if @usr_request == 1 then edit_name end
	end

	def edit_name
		puts "Enter new name (x: Ted Smith): "
		@contact.set_name
	end

end