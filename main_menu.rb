require './Menu'


class MainMenu < Menu

	def initialize
		@menu = [

			"\e[H\e[2J",
			"---- Main Menu ----".center(25),
		  "1. Add new Contact",
			"0. QUIT",
			
		]
	end

end