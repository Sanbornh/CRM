class Contact

	@@contact_id = 0

	def initialize
		@@contact_id += 1
		@id = @@contact_id
		@notes = []
	end

	def set_name
		name = gets.chomp.split(" ")
		@first_name = name[0]
		@last_name = name[1]
	end

	def new_note
		@notes << gets.chomp
	end

end
