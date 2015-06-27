require './src/gameobject'

# place class, the descriptor of a map node. Has objects, description, connections etc.

# incomplete, not tested

# descends from GameObject
class Place < GameObject

  def initialize(game_controller, name, description, adjacencies=[], objects=[])
    super(game_controller, name, description)
    @adjacencies = adjacencies
    @objects = objects
  end


  def add_object(object)
    @objects += [object]
  end


  def add_adjacency(adjacency)
    @adjacencies += [adjacency]
  end


  def get_object(object_id)
    return @gc.get_object(object_id)
  end


  def describe
    @gc.d_print("You are in " + @name)
  end


end

#File.open("map.txt") do |file|
#  while line = file.gets
#    places = line.split ","
#    places[0].to_s = Place.new(places[0], places[1..-1])
#  end
