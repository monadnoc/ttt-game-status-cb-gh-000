# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [2,5,8],
  [1,4,7]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.

    position_1 = board[combo[0]] # load the value of the board at win_index_1
    position_2 = board[combo[1]] # load the value of the board at win_index_2
    position_3 = board[combo[2]] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return [combo[0], combo[1], combo[2]] # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return [combo[0], combo[1], combo[2]]
    else
      return false
    end
  end
end
