require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def display
    system("clear")
    8.times do |row|
      8.times do |col|
        if @cursor.cursor_pos == [row, col]
          if row % 2 == 0 && col % 2 == 0 || (row % 2 == 1 && col % 2 == 1)
            print " #{@board.board[row][col].name} ".colorize(:color => :blue, :background => :red)
          else
            print " #{@board.board[row][col].name} ".colorize(:color => :blue, :background => :red)
          end
        else
          if (row % 2 == 0 && col % 2 == 0) || (row % 2 == 1 && col % 2 == 1)
            print " #{@board.board[row][col].name} ".colorize(:color => :blue, :background => :white)
          else
            print " #{@board.board[row][col].name} ".colorize(:color => :blue, :background => :yellow)
          end
        end
      end
      puts
    end

    @cursor.get_input
    display
  end

end
