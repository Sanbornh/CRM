# log = File.open('./log.txt', 'r') { |file| eval file.read }


# # # file = File.open('./log.txt')

# # # log = file.read
# # # log = eval log
# # # binding.pry
# id = log[:id]
# database = log[:database]


# puts id 
# puts database

# x = {
	
# id: 8,
# database: [1, 2, 3, 4, 5, 6]

# }

# File.write('./log.txt', x)

require 'yaml'

class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Army

	attr_accessor :army
	def initialize
		@army = []
	end

	def enlist(ogre)
		@army << ogre
	end


end

def save_game(characters)
	@yaml = YAML.dump(characters)

	game_log = File.open("./game_log.txt", 'w')
	game_log.write(@yaml)

	# game_log = File.new ('game_log.yaml' 'w')
	# game_log.write(yaml)
end



jeff = Ogre.new(10, 4, 9)
tim = Ogre.new(11, 9, 1)
army = Army.new
army.enlist(jeff)
army.enlist(tim)
save_game(army.army)



# binding.pry












