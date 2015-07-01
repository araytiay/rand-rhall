module Test

  def Test.object_pickup

    gc = GameController.new

    place = Place.new(gc, "place_1", "A test place")
    cat = GameObject.new(gc, "cat", "A cat that looks like a rabbit.")
    cat.add_action(Action.new("cat_snarl", lambda {gc.d_print("The cat snarls, but quickly starts purring and goes still.")}, :object_pickup))
    place.add_object(cat)

    player = Player.new(gc, "Apricorn", place)

    player.look

    player.list_inventory

    player.take_object(cat)

    player.list_inventory

    player.look

  end


  def Test.object_creation

    # create a new dynamic printer (to be replaced by gc.d_print)
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

    # alternately
    dp.d_print(book1.get_description)

  end


  def Test.basic_player_movement_and_book_creation

    gc1 = GameController.new

    book1 = Book.new(gc1, "book_1", "A raggedy book with a black cover", "--blank--", "The Diary of Tom Riddle", "Tom Riddle")

    place1 = Place.new(gc1, "test_room_1", "The first room")
    place2 = Place.new(gc1, "test_room_2", "The second room", [], [book1])

    player1 = Player.new(gc1, "Marcon", place1)

    player1.look

    player1.go_to place2

    player1.look

    player1.take_object(book1)

  end

end
