class TicTacToe
  def initialize(board)
    @board = board
  end

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]

  def display_board
    puts @board
  end 

  def input_to_index(input)
    input = input.to_i - 1
  end 

  def move(index, token = "X")
    @board[index] = token 
  end 

  def position_taken?(index)
    @board[index] == " " ? false : true
  end 

  def valid_move?(index)
    if !position_taken?(index) && index.between?(0, 8)
      return true
    end 
    false
  end  