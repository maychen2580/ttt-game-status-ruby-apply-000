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
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
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
  
  
  
        
    
  
  

    
    
    
    
    


        
  