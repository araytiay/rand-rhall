# The behaviour of the player

# very incomplete

# doesnt descend from gameobject
class Player

  def initialize(game_controller, name, curr_place, inventory=[])
    @gc = game_controller
    @name = name
    @curr_place = curr_place
    @inventory = inventory
    @inventory_size = 6
  end


  # add an object to the player's inventory
  def add_to_inventory(object, silent=false)
    # tests to see if the item will fit
    if @inventory.length < @inventory_size

      # if the object fits, add it to the player's inventory and return true
      @inventory += [object]

      if silent == false
        @gc.d_print("You toss " + object.get_name + " into your bag.")
      end

      return true

    else

      # if the object does not fit, do not add it to the inventory and return false
      if silent=false
        @gc.d_print("You already have "+String(@inventory_size)+" objects in your inventory.")
      end

      return false

    end

  end


  # give the player information about the current room
  def look
    @gc.d_print("You are in " + @curr_place.get_name)
  end


  # take an object from the current place
  def take_object(object, silent=false)

    # if the player successfully adds it to their inventory,
    # then remove it from the current place
    if add_to_inventory(object, silent)

      @curr_place.remove_object(object)

    else

      @gc.d_print("You cannot take it.")

    end

  end


  # method to jump to another place
  def go_to(new_place)
    @curr_place = new_place
  end


end
