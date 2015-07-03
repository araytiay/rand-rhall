# a class to encapsulate an action

# contains a name and a function

# incomplete, currently only used in menus

class Action

  def initialize(name, run, events=[])
    @name = name
    @run = run
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

  # calls the function 'run' associated with this action for a specific event only
  def call(event)
    if @events.include?(event)
      @run.call
    end
  end

end
