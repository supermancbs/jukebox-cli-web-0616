require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
output = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
	puts output

end 

def list(songs)
	songs.each_with_index do |song, index|
		puts "#{index+1}. #{song}"
	end 
end 

def play(songs)
	puts "Please enter a song name or number:"
	response = gets.chomp 
	#binding.pry
	#puts "Playing #{songs[response-1]}"
	if (1...songs.length).to_a.include?(response.to_i)
		puts "Playing #{songs[(response.to_i-1)]}"
	elsif 
		songs.each do |song|
			if song==response 
				puts "Playing #{song}"
			end 
		end
	end 
		puts "Invalid input, please try again"
	  
end 

def exit_jukebox
	puts "Goodbye"
end 

def run(songs)
	help
	puts "Please enter a command:"
	while true
		response=gets.chomp
		if response=="help"
			help
		elsif response=="list"
			list(songs)
		elsif response=="play"
			play(songs)
		elsif response=="exit"
			exit
			break
		end 
	end 

end 
