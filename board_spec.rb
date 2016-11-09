require('minitest/autorun')
require('minitest/rg')
require_relative('board')
require_relative('player')
require_relative('dice')

class TestBoard < Minitest::Test 

def setup 

  @Player1 = Player.new("Yellow")
  @Player2 = Player.new("Red")
  @Player3 = Player.new("Blue")
  @dice1 = Dice.new()
  @board = Board.new()
end

def test_number_of_players

  assert_equal(0, @board.number_of_players)

end

def test_add_player
  @board.add_player(@Player1)
  assert_equal(1, @board.number_of_players)
end

def test_remove_player
  @board.add_player(@Player1)
  @board.add_player(@Player2)
  @board.add_player(@Player3)
  @board.remove_player(@Player2)
  assert_equal(2,@board.number_of_players)
end

  def test_move_player
    
    assert_equal("You Win!", @board.move_player(@Player2))
    assert_equal("You Win!", @Player2.position)

  end

  def test_can_win

    
    assert_equal("You Win!", @board.move_player(@Player2))
  end

end