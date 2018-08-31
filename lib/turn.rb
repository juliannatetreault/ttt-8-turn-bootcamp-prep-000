def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
   if index.between?(0, 8) && board[index] != "X" 
    return true
  else  
    return false
end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

 def move(board, index, character = "X")
  board[index] = character
end

def turn(board, input_to_index)
  puts "Please enter 1-9:"
  user_input = gets.strip
  if valid_move?(board, input_to_index)
    move(board, input_to_index)
    display_board(board)
  else 
    turn(board) 
end
display_board(board)
end