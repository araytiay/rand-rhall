require './src/gameobject'

class Book < GameObject

  def initialize(gc, name, description, content, title="Unknown", author="Unknown")
    super(gc, name, description)
    @content = content
    @title = title
    @author = author
  end


  def read
    @gc.d_print(content)
  end


  def write(new_content)
    @content += new_content
  end


end
