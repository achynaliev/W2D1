class Piece
  attr_reader :name, :color

  def initialize(name, color, symbol=nil)
    @name = name
    @color = color
    @symbol = symbol
  end


end
