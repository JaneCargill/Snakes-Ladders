class Player

attr_accessor :colour, :position, :turn

  def initialize(colour)
    @colour = colour
    @position = 1
    @turn = 0
  end


end