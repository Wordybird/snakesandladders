require ("minitest/autorun")
require ("minitest/rg")
require_relative("players")
require_relative("board")

class TestBoard < Minitest::Test

  def setup
    @person1 = Players.new("Ben", 0)
    @person2= Players.new("Winnie",0)
    @snakes_ladders={50=>-22,23=>-13,75=>-46,11=>-3,12=>22,15=>30,56=>19}
    @end_square = 99
    @board = Board.new(@end_square,@person1,@person2, @snakes_ladders)
  end
  
  def test_recognise_new_players
    assert_equal("Ben",@person1.name)
    assert_equal("Winnie",@person2.name)
  end

  def test_win_check
    @person2.position=99
    assert_equal(99,@person2.position)
    assert_equal( "Congratulations #{@person2.name}, you win.",@board.win_check() )
  end

  def test_roll_dice_person1
    @board.roll_dice()
    assert_includes((0..99),@person1.position)
  end

  def test_roll_dice_person2
    @board.roll_dice()
    assert_includes((0..99),@person2.position)
  end  


   def test_lands_on_snake_or_ladder
    @person1.position=23
    @board.lands_on_snake_or_ladder()
    assert_equal(10,@person1.position)
   end
end