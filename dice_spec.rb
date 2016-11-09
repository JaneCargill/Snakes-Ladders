require('minitest/autorun')
require('minitest/rg')
require_relative('dice')

class TestDice < Minitest::Test

  def setup

    @dice1 = Dice.new()
  end

def test_dice_roll

  assert_equal(@dice1.roll, 2)
end

end