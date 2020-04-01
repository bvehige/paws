class Paws::CLI 

def call
get_dogs 
list_dogs
menu
goodbye
#Paws::Paws_scraper.dog_scraper
  
end

def get_dogs
  @dogs = Paws::Dog.all 
end

def list_dogs
  puts "Welcome to PAWS adoptable dogs!"
   puts "\nHere are dogs available for adoption"
   binding.pry
   @dogs.each.with_index(1) do |dog, i|
     puts "#{i}. #{dog.name} - #{dog.breed}" 
   end
end

 def menu
  input = nil 
  while input != "exit" 
   puts "\nPlease enter the number of the dog you'd like more information about.  Type list to see the main list again.  Or type exit to #end"
   input = gets.strip
   
   if input.to_i > 0 
    the_dog = @dogs[input.to_i-1]
     puts "#{the_dog.name}"
     #puts "#{the_dog.breed}"
     #puts "#{the_dog.sex}"
     #puts "#{the_dog.size}"
     #puts "#{the_dog.color}"
     #puts "#{the_dog.bio}"
   ##case input
   ##when "1"
     ##puts "Detailed information on 1..."
   ##when "2"
     ##puts "Detailed information on 2..."
   ##when "3"
     ##puts "Detailed information on 3..."
   elsif input == "list"
    #list_dogs
   else 
     puts "I'm sorry, please enter a valid request."
   end
 end
end
 
 def goodbye
   puts "Thanks for visiting.  See you later.  WOOF!"
 end
   
 
end
