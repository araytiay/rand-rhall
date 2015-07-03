require './src/gameobject'

class Door < GameObject

  def initialize(gc, name, description, locked, place_1, place_2, door_open="false")
    super(gc, name, description)
    @place_1 = place_1 #the place you're in
    @place_2 = place_2 #the place the door leads to
    @door_open = door_open
    @locked = locked
  end


  def locked? locked
    if locked
      @gc.d_print("The door is locked, you can't pass")
      return true
    elsif !@door_open
      @gc.d_print("You try the door. It's unlocked")
      return false
  end

  def open_door locked

    if !self.locked? locked
      @gc.d_print("You open the door.")

  end

  def use
    if @door_open
      @gc.d_print("You go to #{place_2}.")
      playeerrrrrrr?
  end




end
