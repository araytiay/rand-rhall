# overview class that links components of the game together

# currently stores the GameObject Hash

# will control game settings, references to the dynamic printer etc. (globally used stuff)

class GameController

  def initialize
    @ids = Hash.new
    @curr_id = 1
  end

  def next_id game_object
    id = @curr_id + 1
    @ids[id] = game_object
    @curr_id = id
  end

  def get_object id
    @ids[id]
  end

end
