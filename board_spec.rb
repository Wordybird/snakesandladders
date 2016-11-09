require ("minitest/autorun")
require ("minitest/rg")
require_relative("players")
require_relative("snakes_or_ladders")
require_relative("board")

class TestBoard < Minitest::Test

  def setup
    @person1 = Players.new("Ben", 0)
    @person2= Players.new("Winnie",0)
  end
  
  def test_create_new_players
    assert_equal("Ben",@person1.name)
    assert_equal("Winnie",@person2.name)
  end
end