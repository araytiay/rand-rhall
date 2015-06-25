class GameObject

  def initialize(game_controller, name, description)
    @gc = game_controller
    @name = name
    @description = description
    @id = @gc.next_id self
  end

  def get_description
    @description
  end

  def get_name
    @name
  end

  def get_id
    @id
  end
end
