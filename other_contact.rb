class Contact

	#log = File.open('./log.txt', 'r') { |file| eval file.read }
	# @@contact_id = log[:id]

	@@contact_id = 0
	attr_accessor :first_name

	def initialize
		puts "hello"
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
		# binding.pry
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
