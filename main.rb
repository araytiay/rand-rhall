require './src/dynamicprinter'
require './src/menu'
require './src/action'
require './src/gamecontroller'
require './src/gameobject'
require './src/place'

def main

  # prints a test message using dynamic printing
  dp = DynamicPrinter.new
  dp.d_print dp.get_text "text/welcome.txt"

  # creates a test menu with three options, each an action object
  menu = Menu.new "Main Menu"
  menu.add_option Action.new("Quit", lambda { game_exit })
  menu.add_option Action.new("Redo Menu", lambda {menu.display_and_run})
  menu.add_option Action.new("Print a smiley", lambda {puts ":)"})
  menu.display_and_run
  game_exit

end


def test_object_creation

  dp = DynamicPrinter.new

  gc1 = GameController.new

  place1 = Place.new gc1, "test_room", "A Test Room"

  book1 = GameObject.new gc1, "book", "An old, tattered book"

  place1.add_object book1

  place1.describe

  dp.d_print place1.get_description

  id1 = book1.get_id

  dp.d_print gc1.get_object(id1).get_description

end


def game_exit
  # when this is called, print an annoying message, and then force exit

  # can add cleanup or state saving later

  DynamicPrinter.new.d_print "\n\nThank for play.^^", 0.15
  exit
end

# program start
# main

test_object_creation
