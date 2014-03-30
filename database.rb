class Database

	#attr_accessor :contacts

	def initialize
		@contacts = []
	end

	def add_to_database(contact)
		@contacts << contact
	end

	def display
		@contacts.each { |contact| contact.display }
	end

	def find(name)
		@contacts.each do |contact|
			if contact.first_name.upcase == name then @return_value = contact end
		end
		return @return_value
	end
end

