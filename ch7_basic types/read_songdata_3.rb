Song = Struct.new(:title, :name, :length)

songs = File.readlines("songdata.txt", chomp: true).map do 
  |line|
  _file, length, name, title = line.chomp.split(/\s*\|\s*/)
  minutes, seconds = length.scan(/\d+/)
  Song.new(title, name.squeeze(" "), minutes.to_i * 60 + seconds.to_i)
end
puts songs[1]
