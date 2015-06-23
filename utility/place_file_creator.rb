File.open("map.txt") { |file|
  while line = file.gets
    File.new("./places/" + line.chomp + ".pl", 'w')
  end
}
