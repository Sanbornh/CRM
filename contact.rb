class Contact

	@@contact_id = 0

	def initialize
		@@contact_id += 1
		@id = @@contact_id
	end

	def set_name(name)
		@first_name = name[0]
		@last_name = name[1]
	end

end
