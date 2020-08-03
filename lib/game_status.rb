# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[2,5,8],
[1,4,7],
[0,4,8],
[2,4,6]]

def check_win_combination?(board, player,win_combo)
  win_combo.all? do |position|
    board[position] == player
end
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if check_win_combination(board, "X", win_combo)
       win_combo
    else check_win_combination(board, "O", win_combo)
      win_combo
      elsif
      false
    end
  end
end

      
  

  
  def full?(board)
    if board.include?(" ") || board.include?("")
      false
    else
      true
    end
  end

def draw?(board)
  full?(board) && !won?(board)
end
  
  def over?(board)
    won?(board) || full?(board)
  end
  
  def winner(board)
    if !win?(board)
      nil
    else WIN_COMBINATIONS.each do |win_combo|
      if check_win_combination?(board, "X", win_combo)
        puts "X"
    elsif check_win_combination?(board, "O", win_combo)
      puts "O"
      end
    end
  end
end
    
        
    
  
  

    
    
    
    
    


        
  