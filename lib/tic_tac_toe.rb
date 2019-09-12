class TicTacToe
<<<<<<< HEAD
  attr_accessor :board
  
  WIN_COMBINATIONS = [
    [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]
  ]

 def initialize
=======

WIN_COMBINATIONS = [
    [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]
  ]
  
  def initialize
>>>>>>> d1c69f5804d0db62fee800456832777f12808700
    @board = Array.new(9," ")
  end
  
  def display_board
<<<<<<< HEAD

    puts "-----------"
=======
     puts "-----------"
>>>>>>> d1c69f5804d0db62fee800456832777f12808700
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "-----------"
  end
  
  def input_to_index(input)
<<<<<<< HEAD
    index = input.to_i-1
  end  
=======
    index = input.to_i - 1 
  end
>>>>>>> d1c69f5804d0db62fee800456832777f12808700
  
  def move(position, player_token = "X")
    @board[position] = player_token
  end
<<<<<<< HEAD
    
    def position_taken?(index)
      if @board[index]=="X" || @board[index]=="O"
        true
      else  
        false
      end
    end
    def valid_move?(index)
      if index.between?(0,8) && !position_taken?(index)
        return true
      else
        return false
      end
    end
    
     def turn_count
    turn = 0 
    @board.each do |input|
      if input == "X" || input == "O"
        turn += 1
      end 
    end 
     turn
  end 

=======
  
  def position_taken?(index)
    if @board[index]=="X" || @board[index]=="O"
      true
    else
      false 
    end
  end
  
  def valid_move?(index)
    if index.between?(0,8) && !position_taken?(index)
       true 
    else
      false
    end
  end
  
  def turn_count
    turn = 0 
    @board.each do |input|
      if input == "X" || input == "O"
        turn += 1 
      end 
    end
    turn
  end
  
>>>>>>> d1c69f5804d0db62fee800456832777f12808700
  def current_player
    if turn_count % 2 == 0 
      return "X"
    else
      return "O"
<<<<<<< HEAD
    end 
  end 

=======
    end
  end
  
>>>>>>> d1c69f5804d0db62fee800456832777f12808700
  def turn 
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else 
<<<<<<< HEAD
      turn 
    end 
  end

  def won?
    WIN_COMBINATIONS.detect do |winner|
      @board[winner[0]] == @board[winner[1]] &&
      @board[winner[1]] == @board[winner[2]] &&
      (@board[winner[0]] == "X" || @board[winner[0]] == "O")
    end 
  end

  def full?
    board.all? do |character| 
      if character == "X" || character == "O"
        true 
      else  
        false 
      end 
    end
  end

  def draw?
    if full? && !won?
      true
    else 
      false
    end 
  end 

  def over? 
    draw? || won?
  end 

  def winner
    if win_combination = won? 
      @board[win_combination[0]]
    else 
      nil
    end
  end 

  def play
    until over? do
      turn
    end 
  if won?
    puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end
end








=======
      turn
    end
  end 
  
  def won?
    WIN_COMBINATIONS.detect do |winner|
      
    
end


>>>>>>> d1c69f5804d0db62fee800456832777f12808700
