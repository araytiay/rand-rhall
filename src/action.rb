# a class to encapsulate an action

# contains a name and a function

# incomplete, currently only used in menus

class Action

  def initialize(name, run, event)
    @name = name
    @run = run
    @event = event
  end

  def name
    return @name
  end


  # calls the function 'run' associated with this action for a specific event only
  def call(event)
    if event == @event
      @run.call
    end
  end

end
