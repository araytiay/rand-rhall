
# this is incomplete, as is the place data structure that this creates
def create_place
  is_continue = true
    while is_continue
    print "Input the name of the new place\n (This will overwrite places with the same name and should not contain whitespace): "
    name = gets.chomp
    print "Input the name of any connected places: "
    adjacencies = gets.chomp.split " "
    puts "In the same order, input the directions of the connections"
    print "(u for undirectional, t for towards the new place, a for away): "
    directions = gets.chomp.split " "

    f = File.new "./res/places/"+name+".place", "w"
    f.write name + "\n\n"
    adjacencies.each do |adjacency|
      f.write adjacency +"\n"
    end
    f.write "\n"
    directions.each do |direction|
      f.write direction + "\n"
    end
    print "create another place? (y/n): "
    confirm = gets.chomp
    if confirm != "y"
      is_continue = false
    end
  end
end

create_place
