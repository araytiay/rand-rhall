module Test

  def Test.object_creation_and_id_referencing

    # create a new dynamic printer (to be replaced by gc.dp)
    dp = DynamicPrinter.new

    # create a new game controller
    gc1 = GameController.new

    # create a new place called test_room with description "A Test Room"
    # later a human readable name will also be given
    place1 = Place.new(gc1, "test_room", "A Test Room")

    # create a new gameobject called book with a description
    book1 = GameObject.new(gc1, "book", "An old, tattered book")

    # add the book to the room
    place1.add_object(book1)

    # d_print the description of the room
    place1.describe

    # do almost the same as previous, but does not include "You are in"
    dp.d_print(place1.get_description)

    # get the unique id of the book
    id1 = book1.get_id

    # use the unique id of the book to get its description and d_print it
    dp.d_print(gc1.get_object(id1).get_description)

  end


  def Test.basic_player_movement_and_book_creation

    gc1 = GameController.new

    book1 = Book.new(gc1, "book_1", "A raggedy book with a black cover", "--blank--", "The Diary of Tom Riddle", "Tom Riddle").get_id

    place1 = Place.new(gc1, "test_room_1", "The first room").get_id
    place2 = Place.new(gc1, "test_room_2", "The second room", [], [book1]).get_id

    player1 = Player.new(gc1, "Marcon", place1)

    player1.look

    player1.go_to place2

    player1.look

    player1.take_object(book1)

  end

end
