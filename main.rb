require './src/dynamicprinter'
require './src/menu'
require './src/action'
require './src/gamecontroller'
require './src/gameobject'
require './src/place'

def main

  # prints a test message using dynamic printing
  dp = DynamicPrinter.new
  dp.d_print(dp.get_text("text/welcome.txt"))

  # creates a test menu with three options, each an action object
  menu = Menu.new("Main Menu")
  menu.add_option(Action.new("Quit", lambda { game_exit }))
  menu.add_option(Action.new("Redo Menu", lambda {menu.display_and_run}))
  menu.add_option(Action.new("Print a smiley", lambda {puts ":)"}))
  menu.display_and_run
  game_exit

end


def test_object_creation

  # create a new dynamic printer (to be replaced by gc.dp)
  dp = DynamicPrinter.new

  # create a new game controller
  gc1 = GameController.new

  # create a new place called test_room with description "A Test Room"
  # later a human readable name will also be given
  place1 = Place.new(gc1, "test_room", "A Test Room")

  # create a new gameobject called book with a description
  book1 = GameObject.new(gc1, "book", "An old, tattered book")

  # add the book to the room
  place1.add_object(book1)

  # d_print the description of the room
  place1.describe

  # do almost the same as previous, but does not include "You are in"
  dp.d_print(place1.get_description)

  # get the unique id of the book
  id1 = book1.get_id

  # use the unique id of the book to get its description and d_print it
  dp.d_print(gc1.get_object(id1).get_description)

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
