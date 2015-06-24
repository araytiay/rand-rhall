class DynamicPrinter

  def wait(wait_time)
    time = Time.now
    while Time.now - time < wait_time
    end
    true
  end

  def get_text(filename)
    File.read("./res/"+filename)
  end

  def d_print(s, t=0.05)
    begin
      s.split("").each() do |c|
        print(c)
        if c == '.'
          x = t*10
        elsif c == '^'
          x = t*10
          print "\b"
        elsif c == ','
          x = t*4
        else
          x = t
        end
        wait(x)
      end
    rescue Interrupt
      puts "\b\b"
    end
    puts "\n"
  end
end
