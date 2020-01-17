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
  if resp.match()
    if resp.to_i >= 0 && resp.to_i < songs.length
      