class Paws::CLI 

def call
  list_dogs
  menu
  goodbye
end

def list_dogs
   puts "Welcome to PAWS adoptable dogs!"
   puts "\nHere are dogs available for adoption"
   puts "1. Arlo"
   puts "2. Milo"
   puts "3. Zoey"
end

 def menu
  input = nil 
  while input != "exit" 
   puts "\nPlease enter the number of the dog you'd like more information about.  Type list to see the main list again.  Or type exit to end"
   input = gets.strip 
   case input
   when "1"
     puts "Detailed information on 1..."
   when "2"
     puts "Detailed information on 2..."
   when "3"
     puts "Detailed information on 3..."
   when "list"
    list_dogs
   end
 end
end
 
 def goodbye
   puts "Thanks for visiting.  See you later."
 end
   
 
end
