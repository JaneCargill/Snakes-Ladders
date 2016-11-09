class Board

  attr_accessor :players, :snakes_and_ladders, :squares, :dice

  def initialize()
    @squares = Array.new(9)
    @snakes_and_ladders = {1 => 1, 2 => 2, 3 => 3, 4 => 3, 5 => 7, 6 => 6, 7 => 7, 8 => 8, 9 => 9}
    @players = []
    @dice = Dice.new()
  end

  def number_of_players

    return @players.count

  end

  def add_player(player)

    @players << player

  end

  def remove_player(player)

    @players.delete(player)

  end

  def move_player(player)
    new_position = 0
    player.position += @dice.roll
    for key, value in @snakes_and_ladders
     new_position = value if player.position == key
     new_position = "You Win!" if player.position >= 9
   end
    player.position = new_position
    
      
  end
end