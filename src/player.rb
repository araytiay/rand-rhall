# The behaviour of the player

# very incomplete

# doesnt descend from gameobject
class Player

  def initialize(game_controller, name, curr_place, inventory=[])
    @gc = game_controller
    @name = name
    @curr_place = curr_place
    @inventory = inventory
  end


  # add an object to the player's inventory
  def add_to_inventory(object, silent=false)

    @inventory += [object]

    if silent == false
      @gc.d_print("You toss " + object.get_name + " into your bag.")
    end

  end


  def look
    @gc.d_print("You are in " + @curr_place.get_name)
  end


  def take_object(object)
    add_to_inventory(object)
    @curr_place.remove_object(object)
  end

  def go_to(new_place)
    @curr_place = new_place
  end


end
