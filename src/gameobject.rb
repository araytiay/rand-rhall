# the building block class of the game. all content should stem from this class.
# every GameObject is referenced by id in the GameObject Hash in game_controller

# name and id cannot be changed, description can

class GameObject

  def initialize(gc, name, description, actions=[])
    @gc = gc
    @name = name
    @description = description
    @id = @gc.next_id(self)
    @actions = actions
  end


  def add_action action
    @actions += [action]
  end


  def call_actions event
    @actions.each do |action|
      action.call event
    end
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
