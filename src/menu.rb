require './src/dynamicprinter'

# presents an array of options to the user, and then runs the code for their corresponding choice
# a fundamental part of user interaction

# incomplete

class Menu

  def initialize(menu_name)
    @dp = DynamicPrinter.new
    @menu_name = menu_name
    @options = []
    @prompt_string = '>>: '
  end


  # add an Action object to the list of options
  def add_option(option)
    @options += [option]
  end


  # the main menu method. Displays the menu, asks for input, and runs the selection
  def display_and_run

    # prints the menu name and waits briefly
    @dp.d_print(@menu_name + ":^^")
    i = 1

    # displays the options
    @options.each do |option|
      print(i + ' ')
      puts(option.name)
      i += 1
    end

    # prompt and get valid input from the player
    print(@prompt_string)
    action = get_action

    # runs the selected action
    action.call :menu_select

    # some test code
    print("here")
  end


  # gets valid input from the player
  def get_action
    begin
      num = Integer(gets.strip)
    rescue ArgumentError
      puts("Please enter a valid option")
      print(@prompt_string)
      return get_action
    end
    if num > @options.length
      puts("Please enter a valid option")
      print(@prompt_string)
      return get_action
    end
    return @options[num-1]
  end
end
