 class Bingo
   NUM_MAX = 75
   attr_accessor :rust_numbers, :used_numbers,:current_number
   
   def initialize
     @rust_numbers = Array.new(NUM_MAX){|n| n}
     @used_numbers = Array.new()
   end
    
   def select_number
     self.check_rust
     @current_number = @rust_numbers.choice
     @rust_numbers.reject! {|x| x == @current_number}
     @used_numbers.push @current_number
    end
   
   def check_rust
     unless rust_numbers.size > 0
       print "This game is already complete.\n"
       exit
     end
    end
   
   def check_unused?(num)
     return unless @rust_numbers.index(@current_number)
   end
 end
 
 
