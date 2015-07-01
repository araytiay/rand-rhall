require './src/gameobject'

# place class, the descriptor of a map node. Has objects, description, connections etc.

# incomplete, not tested

# descends from GameObject
class Place < GameObject

  def initialize(gc, name, description, objects=[], adjacencies=[])
    super(gc, name, description)
    @adjacencies = adjacencies
    @objects = objects
  end


  def add_object(object)
    @objects += [object]
  end


  def add_adjacency(adjacency)
    @adjacencies += [adjacency]
  end


  def get_object(obj_id)
    return @gc.get_object(obj_id)
  end


  def remove_object(object)
    @objects.delete(object)
  end


end

#File.open("map.txt") do |file|
#  while line = file.gets
#    places = line.split ","
#    places[0].to_s = Place.new(places[0], places[1..-1])
#  end
