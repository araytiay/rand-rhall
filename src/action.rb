class Action

  def initialize(name, run)
    @name = name
    @run = run
  end

  def name
    @name
  end

  def run
    return @run
  end

end
