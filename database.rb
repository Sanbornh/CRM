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

end