class String

  #tacks a colouring method onto string from the ansi codes
  #ansi codes found at http://goo.gl/rrGIL

  #Feel free to add more, just note the changes must also be added to
  #the hash col_map in the dynamic printer to be used by this printer

  def colour(col_code)
    #magic string. Haha.
    "\e[#{col_code}m#{self}\e[0m"
  end

  def red
    colour(31)
  end

  def green
    colour(32)
  end

  def yellow
    colour(33)
  end

  def blue
    colour(34)
  end

  def bold
    "\e[1m#{self}\e[22m"
  end

  def normal
    "\e[0m#{self}"
  end

end
