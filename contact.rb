class Contact

	@@contact_id = 0
	attr_reader :first_name


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

	def display
		puts "Contact ID: #{@id}"
		if !@first_name.nil? then print "Name: #{@first_name} " end
		if !@last_name.nil? then puts "#{@last_name}" end
		if !@notes.empty? 
			puts "Notes: "
			@notes.each { |note| puts "\n#{note}"}
		end
		puts "----------------"
	end
end
