require './src/dynamicprinter'


class Menu

  def initialize(menu_name)
    @dp = DynamicPrinter.new
    @menu_name = menu_name
    @options = []
    @prompt_string = '>>: '
  end


  def add_option option
    @options += [option]
  end


  def display_and_run
    @dp.d_print @menu_name + ":^^"
    i = 1
    @options.each do |option|
      print i
      puts option.name + ' '
      i += 1
    end
    print @prompt_string
    action = get_action
    action.run.call
    print "here"
  end


  def get_action
    begin
      num = Integer(gets.strip)
    rescue ArgumentError
      puts "Please enter a valid option"
      print @prompt_string
      return get_action
    end
    if num > @options.length
      puts "Please enter a valid option"
      print @prompt_string
      return get_action
    end
    return @options[num-1]
  end
end
