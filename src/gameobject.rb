# the building block class of the game. all content should stem from this class.
# every GameObject is referenced by id in the GameObject Hash in game_controller

# name and id cannot be changed, description can

class GameObject

  def initialize(gc, name, description, actions=Hash.new)
    @gc = gc
    @name = name
    @description = description
    @id = @gc.next_id(self)

    # the list of actions this object can cause
    @actions = actions
    @actions.default = []
  end


  # add a new action
  def add_action(action)
    events = action.get_events
    events.each do |event|
      @actions[event] = @actions[event] += [action]
    end
  end

  # try all the actions for this event. Only actions for the specified event will be called
  def call_actions(event)
    @actions[event].each do |action|
      action.call(event)
    end
  end


  def remove_action(action)
    events = action.get_events
    events.each do |event|
      @actions[event].delete(action)
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
