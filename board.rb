
class Board

  attr_accessor :players, :snakes_and_ladders, :squares, :dice

  def initialize(snakes_and_ladders, dice)
    # @squares = Array.new(9)
    @snakes_and_ladders = snakes_and_ladders
    @players = []
    @dice = dice
  end

  def number_of_players
# 
    return @players.count

  end

  def add_player(player)

    @players << player

  end

  def remove_player(player)

    @players.delete(player)

  end

  def count_turn(player)
    for player in @players
    player.turn += 1
    end
  end

  def move_player(player)
    count_turn(player)
    new_position = 0
    player.position += @dice.roll
    for key, value in @snakes_and_ladders
     new_position = value if player.position == key
     new_position = "You Win!" if player.position >= @snakes_and_ladders.count
   end
    player.position = new_position
      
  end

 

end












