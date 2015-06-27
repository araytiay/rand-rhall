# a class to encapsulate an action

# contains a name and a function

# incomplete, currently only used in menus

class Action

  def initialize(name, run)
    @name = name
    @run = run
  end

  def name
    return @name
  end

  def run
    return @run
  end

end
