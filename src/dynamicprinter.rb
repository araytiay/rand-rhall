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
    puts(s)
  end

  # the dynamic printing method. most used method in this class
  # takes a string and the time taken to print each character
  def d_print(s, t=0.05)
    begin
      s.split("").each() do |c|
        print(c)

        # lengthens the print time of dot for effect
        if c == '.'
          x = t*10

        # lengthens the print time of comma for effect
        elsif c == ','
          x = t*4

        # ^ is used as an invisible wait character
        elsif c == '^'
          x = t*10
          print("\b")

        else
          x = t
        end
        wait(x)
      end

    # keyboard Interrupt can be used to skip text
    rescue Interrupt
      # remove the ^C from the interrupt
      puts("\b\b")
    end

    puts("\n")

  end


end
