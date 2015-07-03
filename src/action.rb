# a class to encapsulate an action

# contains a name and a function

# incomplete, currently only used in menus

class Action

  def initialize(name, func, events=[])
    @name = name
    @func = func
    @events = events
  end

  def get_name
    return @name
  end

  def get_events
    return @events
  end

  def add_event(event)
    @events += [event]
  end

  # calls the function 'func' associated with this action for a specific event only
  def call(event)
    if @events.include?(event)
      @func.call
    end
  end

end
