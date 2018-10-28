def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if (0..8).include?(index) && !(position_taken?(board, index))
    true
  end
end

def move(board, index, token="X")
  board[index] = token
  board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = input_to_index(gets.strip)

  while valid_move?(board, user_input) == false
    turn(board)
  end

  if valid_move?(board, user_input) == true


  move(board, user_input)
 # valid_move?(board, user_input) == false
 #  #  puts "Please make a valid move. Enter 1-9 into an empty space."
 #    puts "Please enter 1-9:"
 #    user_input = input_index(gets.strip)
 #  elsif valid_move?(board, user_input)
 #    move(board, user_input, token)
 #  end
end
