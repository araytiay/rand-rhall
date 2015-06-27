# The behaviour of the player

# very incomplete

# doesnt descend from gameobject
class Player

  def initialize(game_controller, name, current_room, inventory=[])
    @gc = game_controller
    @name = name
    @curr_room = current_room
    @inventory = inventory
  end


  # add an object to the player's inventory
  def add_to_inventory obj_id silent?=false

    @inventory += [obj_id]

    if silent? == false
      @gc.d_print @gc.get_object(obj_id).get_name " was placed in your bag."
    end

  end


  def go_to new_place
    @curr_room = new_place
  end

  
end
