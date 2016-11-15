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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_answer = gets.chomp
  if (1..9).include?(user_answer.to_i)
    puts "Playing #{songs[user_answer.to_i - 1]}"
  elsif songs.include?(user_answer)
    puts "Playing #{user_answer}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    end
  end
  if user_response == "exit"
    exit_jukebox
  end
end
