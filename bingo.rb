 class Bingo
   NUM_MAX = 75
   MESSAGE_GAME_IS_OVER = "This game is already complete.\n"
   attr_reader :rust_numbers, :used_numbers,:current_number
   
   def initialize
     @rust_numbers = Array.new(NUM_MAX){|n| n}
     @used_numbers = Array.new()
   end
    
   def select_number
     if check_rust?
       @current_number = @rust_numbers.choice
       @rust_numbers.reject! {|x| x == @current_number}
       @used_numbers.push @current_number
     end
   end
   
   def check_rust?
     unless @rust_numbers.size > 0
       false
     else
       true
     end
   end
   
   def unused?(num)
     return  @rust_numbers.index(num) != nil
   end

 end
 
 

