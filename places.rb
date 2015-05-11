class Place

  def initialize(name, adjacencies)

  end

  def describe
    puts "You are in" name


end

File.open("map.txt") do |file|
  while line = file.gets
    places = line.split ","
    places[0].to_s = Place.new(places[0], places[1..-1])
