require('minitest/autorun')
require('minitest/rg')
require_relative('board')
require_relative('player')
require_relative('dice')
require_relative('fake_dice')


class TestBoard < Minitest::Test 

  def setup 

    @Player1 = Player.new("Yellow")
    @Player2 = Player.new("Red")
    @Player3 = Player.new("Blue")
    @dice1 = FakeDice.new()
    @board = Board.new({1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 17, 7 => 7, 8 => 8, 9 => 9, 10 => 10, 11 => 11, 12 => 23, 13 => 13, 14 => 3, 14 => 15, 16 => 16, 17 => 17, 18 => 18, 19 => 19, 20 => 20, 21 => 21, 22 => 22, 23 => 23, 24 => 24, 25 => 25, 26 => 34, 27 => 10, 28 => 20, 29 => 29, 30 => 30, 31 => 31, 32 => 32, 33 => 33, 34 => 34, 35 => 35, 36 => 36}, @dice1)
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


  def test_count_turn
    @board.add_player(@Player3)
    @board.move_player(@Player3)
    assert_equal(1, @Player3.turn)
  end

    
  end



