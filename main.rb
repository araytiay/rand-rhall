require './src/dynamicprinter'
require './src/menu'
require './src/action'

def main

  # prints a test message using dynamic printing
  dp = DynamicPrinter.new
  dp.d_print dp.get_text "text/welcome.txt"
  menu = Menu.new "Main Menu"
  menu.add_option Action.new("Quit", lambda { game_exit })
  menu.add_option Action.new("Redo Menu", lambda {menu.display_and_run})
  menu.add_option Action.new("Print a smiley", lambda {puts ":)"})
  menu.display_and_run
  game_exit

end

def game_exit
  DynamicPrinter.new.d_print "\n\nThank for play.^^", 0.15
end

main
