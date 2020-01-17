def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{ |song, i| puts "#{i + 1}: #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  resp = gets.strip
  song_title = nil
  if resp.match("^[0-9]+$")
    song_title = songs[resp.to_i]
  else
    song_title = songs.find_index(resp)
  end
  
  if song_title
    puts "Playing #{song_title}"
  else
    puts "Invalid input, please try again"
  end
end