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
  reg = "[0-#{songs.length-1}]"
  puts "Please enter a song name or number:"
  resp = gets.strip
  if resp.match(reg)
    if resp.to_i >= 0 && resp.to_i < songs.length
      