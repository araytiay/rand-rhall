require './src/stringcolour'

class DynamicPrinter

  # waits for specified length of time in seconds
  def wait(wait_time)
    time = Time.now
    while (Time.now - time) < wait_time
    end
    true
  end


  # gets text from a resource file
  def get_text(filename)
    return File.read("./res/"+filename)
  end


  def display(s)
    d_print(s, t=0)
  end

  # the dynamic printing method. most used method in this class
  # takes a string and the time taken to print each character
  def d_print(s, t=0.05)

    begin
      flag_parsing = false

      #sets the original colour to normal
      col = "normal"
      col_map = {'r' => "red", 'g' => "green", 'b' => "blue", 'y' => "yellow", 'n' => "normal", 'i' => "bold"}

      s.split("").each() do |c|
        x = t
        if '.,^&'.include? c
          flag_parsing = true
        end
        if flag_parsing

          # lengthens the print time of dot for effect
          # ^ is used as an invisible wait character
          if '.^'.include? c
            x = t*10
            flag_parsing = false
            unless c == "^" ; print(c) ; end

          # lengthens the print time of comma for effect
          elsif c == ','
            x = t*4
            flag_parsing = false
            print(c)

          #for a colour flag
          #TOFIX if flag doesn't exist we'll have a silly bug
          elsif col_map.include?(c)
            col = col_map[c]
            flag_parsing = false
          end

        else
          wait(x)
          print(eval("c.#{col}"))
        end
      end

    # keyboard Interrupt can be used to skip text
    rescue Interrupt
      # remove the ^C from the interrupt
      puts("\b\b")
    end

    puts("\n")

  end


end
