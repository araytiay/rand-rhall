# dev tool to create places

# accessed through dev.rb (not created yet)

# this is incomplete, as is the place data structure that this creates
def create_place

  is_continue = true
  while is_continue
    # get the unique name of the place
    print "Input the unique name of the new place (used as identifier)\n (This will overwrite places with the same name and should not contain whitespace): "
    unique_name = gets.chomp

    # get the readable name of the place
    print "Input the readable name of the new place: "
    name = gets.chomp

    # get the names of any connected places
    print "Input the name of any connected places: "
    adjacencies = gets.chomp.split " "

    # get the directions of the connections
    puts "In the same order, input the directions of the connections"
    print "(u for undirectional, t for towards the new place, a for away): "
    directions = gets.chomp.split " "

    #ouput the values to a file in a simple format
    f = File.new "./res/places/"+name+".place", "w"
    f.write unique_name + "\n\n"
    f.write name + "\n\n"
    adjacencies.each do |adjacency|
      f.write adjacency +"\n"
    end
    f.write "\n"
    directions.each do |direction|
      f.write direction + "\n"
    end

    #ask whether to repeat
    print "create another place? (y/n): "
    confirm = gets.chomp
    if confirm != "y"
      is_continue = false
    end
  end
end

# script start
create_place
