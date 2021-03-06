require './src/dynamicprinter'
# overview class that links components of the game together

# currently stores the GameObject Hash

# will control game settings, references to the dynamic printer etc. (globally used stuff)

class GameController

  def initialize
    @dp = DynamicPrinter.new
    @ids = Hash.new
    @curr_id = 10000
  end

  def next_id(game_object)
    id = @curr_id + 1
    @ids[id] = game_object
    @curr_id = id
    return id
  end


  def d_print(s)
    @dp.d_print(s)
  end


  def display(s)
    @dp.display(s)
  end


  def get_object(id)
    return @ids[id]
  end

end
