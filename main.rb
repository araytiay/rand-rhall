require './src/dynamicprinter'

def main

  # prints a test message using dynamic printing
  dp = DynamicPrinter.new
  dp.d_print dp.get_text "text/welcome.txt"

end

main
