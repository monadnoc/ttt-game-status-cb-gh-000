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
  win = []
  empty_board = board.all? {|x| x == " "}
  WIN_COMBINATIONS.each do |combo|
    if empty_board || full?(board)
      return false
    elsif combo.all? { |value| board[value] =="X" } || combo.all? { |value| board[value] =="O" }
      win = combo
    end
  end
  win
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  if !(won?(board) == false) && full?(board)
    puts won?(board)
    puts full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
    return false
  end
end
