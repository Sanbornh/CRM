require 'yaml'


class Database

	attr_accessor :contacts

	def initialize
		@contacts = []
		load_log
	end

	def load_log
	  log = File.open("./log.txt")
	  yaml = log.read
	  log = YAML.load(yaml)
	  @contacts = log[:contacts]
	  # binding.pry
	end


	def add_to_database(contact)
		# binding.pry
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

