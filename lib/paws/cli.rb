class Paws::CLI 

def call
puts "Welcome to PAWS adoptable dogs!"

get_dogs 
list_dogs
menu
goodbye

end

def get_dogs
  @dogs = Paws::Dog.all 
end

def list_dogs
   puts "\nHere are dogs available for adoption"
   @dogs.each.with_index(1) do |dog, i|
     puts "#{i}. #{dog.name}-" 
 end
end

 def menu
   input = nil
   until input == "exit"
   puts "\nPlease enter the number of the dog you'd like more information about."  
   puts "Type 'list' to see the main list again.  Or type 'exit' to end"
   input = gets.strip
   
   if input.to_i > 0 
    the_dog = @dogs[input.to_i-1]
     puts "Dog's Name:  #{the_dog.name}"
     puts "Dog's Bio:   #{the_dog.bio}"
     puts "#{the_dog.desc}"
     #puts "#{the_dog.size}"
     #puts "#{the_dog.color}"
     #puts "#{the_dog.bio}"
   
   elsif input == "list"
    list_dogs
   end
 end
end
 
 def goodbye
   puts "Thanks for visiting.  See you later.  WOOF!"
 end
   
 
end
