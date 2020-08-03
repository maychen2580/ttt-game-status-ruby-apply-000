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

def WIN_COMBINATIONS(board)


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
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
  
  
        
    
  
  

    
    
    
    
    


        
  