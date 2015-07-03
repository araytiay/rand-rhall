# the building block class of the game. all content should stem from this class.
# every GameObject is referenced by id in the GameObject Hash in game_controller

# name and id cannot be changed, description can

class GameObject

  def initialize(gc, name, description)
    @gc = gc
    @name = name
    @description = description
    @id = @gc.next_id(self)

  end


  def examine
    @gc.d_print(get_description)
  end


  def pickup
  end

  def pickup_failed
  end


  def use
    @gc.d_print("It does nothing.")
  end


  def get_description
    return @description
  end


  def set_description(description)
    @description = description
  end


  def get_name
    return @name
  end


  def get_id
    return @id
  end


end
