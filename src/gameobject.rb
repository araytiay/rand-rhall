# the building block class of the game. all content should stem from this class.
# every GameObject is referenced by id in the GameObject Hash in game_controller

# name and id cannot be changed, description can

class GameObject

  def initialize(game_controller, name, description)
    @gc = game_controller
    @name = name
    @description = description
    @id = @gc.next_id self
  end


  def get_description
    @description
  end


  def set_description description
    @description = description
  end


  def get_name
    @name
  end


  def get_id
    @id
  end


end