class Paws::CLI 

def call
puts "Welcome to PAWS adoptable dogs!".colorize(:blue)

get_dogs 
list_dogs
menu
goodbye

end

def get_dogs
  @dogs = Paws::Dog.all 
end

def list_dogs
   puts "\nHere are dogs available for adoption".colorize(:light_blue)
   @dogs.each.with_index(1) do |dog, i|
     puts "#{i}. #{dog.name}" 
 end
end

 def menu
   input = nil
   until input == "exit"
   puts "\nPlease enter the number of the dog you'd like more information about.".colorize(:blue)  
   puts "Type 'list' to see the main list again.  Or type 'exit' to end".colorize(:blue)
   input = gets.strip
   
   if input.to_i > 0 && input.to_i <= @dogs.length
    the_dog = @dogs[input.to_i-1]
     puts "Dog's Name:  #{the_dog.name}"
     puts "Basic Info:  #{the_dog.basics}"
     puts "Dog's Breed: #{the_dog.breed}"
     puts "#{the_dog.additional}"
     puts "#{the_dog.desc}"
     #puts "#{the_dog.bio}"
   
   elsif input == "list"
    list_dogs
   end
 end
end
 
 def goodbye
   puts "Thanks for visiting.  See you later.  WOOF!".colorize(:blue)
 end
   
 
end
