require('minitest/autorun')
require('minitest/rg')
require_relative('player')
require_relative('dice')

class TestPlayer < Minitest::Test

  def setup
    @Player1 = Player.new("Yellow")
    @Player2 = Player.new("Red")
    @Player3 = Player.new("Blue")
    @dice1 = Dice.new()
  end

  def test_player_colour

    assert_equal("Yellow", @Player1.colour)
  
  end

  def test_player_position

    assert_equal(1, @Player2.position)

  end

  

end