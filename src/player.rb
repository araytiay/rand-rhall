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
      if silent == false
        @gc.d_print("You already have "+String(@inventory_size)+" objects in your inventory.")
      end

      return false

    end

  end


  # give the player information about the current room
  def look
    @gc.d_print("You are in " + @curr_place.get_name)
    @gc.d_print("Around you, you see: ")
    # print(@curr_place.get_objects())
    @curr_place.get_objects().each do |object|
      @gc.d_print(" > " + object.get_description)
    end
    if @curr_place.get_objects().length == 0
      @gc.d_print(" - Nothing important.")
    end
  end


  # take an object from the current place
  def take_object(object, silent=false)

    # if the player successfully adds it to their inventory,
    # then remove it from the current place
    if add_to_inventory(object, silent)

      object.call_actions(:object_pickup)
      @curr_place.remove_object(object)

    else

      object.call_actions(:object_pickup_failed)
      @gc.d_print("You cannot take it.")

    end

  end

  # list the items in the player's Inventory in a human readable format
  def list_inventory

    # print the table header
    @gc.d_print("Inventory:")

    # print each item with some indent
    @inventory.each do |object|
      @gc.display(" > #{object.get_name}")
    end

    # if there is nothing in the player's inventory, say so
    if @inventory.length == 0
      @gc.display(" - Nothing")
    end

  end

  # method to jump to another place
  def go_to(new_place)
    @curr_place = new_place
  end


end
