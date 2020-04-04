class Paws::CLI 

def call
puts "Welcome to the Whatcom County Animal Shelter adoptable dogs!".colorize(:light_blue).bold
get_dogs 
list_dogs
menu
goodbye

end

def get_dogs
  @dogs = Paws::Dog.all 
end

def list_dogs
   puts "\nHere's a list of dogs available for adoption:".colorize(:light_blue).underline
   @dogs.each.with_index(1) do |dog, i|
     puts "#{i}. #{dog.name}".colorize(:green) 
 end
end

 def menu
   input = nil
   until input == "exit"
   puts "\nPlease enter the number of the dog you'd like more information about.".colorize(:light_blue)  
   puts "Type 'list' to see the main list again.  Or type 'exit' to end".colorize(:light_blue)
   input = gets.strip
   
   if input.to_i > 0 && input.to_i <= @dogs.length
    the_dog = @dogs[input.to_i-1]
     puts "Dog's Name:  #{the_dog.name}".colorize(:green).bold
     puts "Basic Info:  #{the_dog.basics}".colorize(:green)
     puts "Dog's#{the_dog.breed}".colorize(:green)
     puts "#{the_dog.additional}".colorize(:green)
     puts "#{the_dog.desc}".colorize(:green)
     puts ""
     puts "If you're interested in meeting#{the_dog.name}please contact:".colorize(:light_blue) 
     puts "Whatcom Humane Society".colorize(:blue)
     puts "Shelter Hours & Info".colorize(:blue)
     puts "2172 Division Street".colorize(:blue)
     puts "Bellingham, WA 98226".colorize(:blue)
     puts "(360) 733-2080".colorize(:blue)
     puts "https://www.whatcomhumane.org/adopt/".colorize(:blue)
         
   
   elsif input == "list"
    list_dogs
   end
 end
end
 
 def goodbye
   puts "Thanks for visiting.  WOOF, WOOF!".colorize(:light_blue)
 end
   
 
end
