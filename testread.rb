log = File.open('./log.txt', 'r') { |file| eval file.read }


# # file = File.open('./log.txt')

# # log = file.read
# # log = eval log
# # binding.pry
id = log[:id]
database = log[:database]


puts id 
puts database

x = {
	
id: 8,
database: [1, 2, 3, 4, 5, 6]

}

File.write('./log.txt', x)