# The behaviour of the player

# very incomplete

# doesnt descend from gameobject
class Player

  def initialize(game_controller, name, curr_place_id, inventory=[])
    @gc = game_controller
    @name = name
    @curr_place_id = curr_place_id
    @inventory = inventory
  end


  # add an object to the player's inventory
  def add_to_inventory(obj_id, silent=false)

    @inventory += [obj_id]

    if silent == false
      @gc.d_print(@gc.get_object(obj_id).get_name + " was placed in your bag.")
    end

  end


  def look
    @gc.get_object(@curr_place_id).describe
  end


  def take_object(obj_id)
    curr_place = @gc.get_object(@curr_place_id)
    add_to_inventory(obj_id)
    curr_place.remove_object(obj_id)
  end

  def go_to(new_place_id)
    @curr_place_id = new_place_id
  end


end
