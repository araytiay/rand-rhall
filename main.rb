require './tests'
require './src/dynamicprinter'
require './src/menu'
require './src/gamecontroller'
require './src/gameobject'
require './src/gameobjects/book'
require './src/place'
require './src/player'

def main

  # prints a test message using dynamic printing
  dp = DynamicPrinter.new
  dp.d_print(dp.get_text("text/welcome.txt"))


  game_exit

end


def game_exit
  # when this is called, print an annoying message, and then force exit

  # can add cleanup or state saving later

  DynamicPrinter.new.d_print "\n\nThank for play.^^", 0.15
  exit
end

# program start
# main

#Test.object_pickup
main
