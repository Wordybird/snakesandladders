require ("minitest/autorun")
require ("minitest/rg")
require_relative("players")
require_relative("snakes_or_ladders")
require_relative("board")

class TestBoard < Minitest::Test

  def setup
    @person1 = Players.new("Ben", 99)
    @person2= Players.new("Winnie",0)
    # @snakes_ladders={50=>-22,23=>-11,75=>-46,11=>-3,12=>34,15=>45,56=>75}
    @end_square = 99
    @board = Board.new(@end_square,@person1,@person2)
  end
  
  def test_recognise_new_players
    assert_equal("Ben",@person1.name)
    assert_equal("Winnie",@person2.name)
  end

  def test_win_check
    assert_equal(99,@person1.position)
    assert_equal( "Congratulations, you win.", @board.win_check() )

  end

  # def test_lands_on_snake
  #   @person1
  #   assert_equal(22,@person1.position)
  # end

  # def test_lands_on_ladder

  # end
end