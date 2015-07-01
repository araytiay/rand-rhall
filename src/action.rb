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

  def call event
    if event == @event
      @run.call
    end
  end

end
