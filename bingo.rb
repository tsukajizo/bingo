 class Bingo
   NUM_MAX = 75
   MESSAGE_GAME_IS_OVER = "This game is already complete.\n"
   attr_reader :remaining_numbers, :used_numbers,:current_number
   
   def initialize
     @remaining_numbers = Array.new(NUM_MAX){|n| n}
     @used_numbers = []
   end
    
   def select_number
     if remain?
       @current_number = @remaining_numbers.sample
       @remaining_numbers.reject! {|x| x == @current_number}
       @used_numbers << @current_number
     end
   end
   
   def remain?
     !@remaining_numbers.empty?
   end
   
   def unused?(num)
     !@remaining_numbers.index(num).nil?
   end

 end
 
 

