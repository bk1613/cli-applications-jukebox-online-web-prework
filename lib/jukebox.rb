# Add your code here
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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(song_list)
  array_num = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts "Please enter a song name or number:"
  input_song = gets.strip
  if array_num.include?(input_song.to_i)
    puts "Playing #{song_list[input_song.to_i - 1]}"
    
  elsif song_list.include?(input_song.to_s)
    puts "Playing #{input_song.to_s}"
  else
    puts "Invalid input, please try again"
    
  end
end

def list(song_list)
  
  song_list.each_with_index do |song, index|
    
    puts "#{(index + 1)}. #{song}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  command = get_command

  while command != "exit" do
    case command
    when "help"
      help
      command = get_command
    when "list"
      list(my_songs)
      command = get_command
    when "play"
      play(my_songs)
      command = get_command
    when "exit"
      break
    else
      puts "Invalid command, please specify a command.  For command list, type help."
      command = get_command
    end
  end
  exit_jukebox
  
end

