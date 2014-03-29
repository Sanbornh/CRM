class Menu

	def display
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