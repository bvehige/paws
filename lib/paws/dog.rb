class Paws::Dog 

attr_accessor :name, :breed, :sex, :size, :color 

def self.all 
   puts "1. Arlo"
   puts "2. Milo"
   puts "3. Zoey"
  
  dog_1 = self.new 
  dog_1.name = "Arlo"
  dog_1.breed = "Labrador Retriever"
  dog_1.sex = "Male"
  dog_1.size = "Medium"
  dog_1.color = "Black"
  
  dog_2 = self.new
  dog_2.name = "Milo"
  dog_2.breed = "German Shepard"
  dog_2.sex = "Male"
  dog_2.size = "Large"
  dog_2.color = "Black and Tan"

  dog_3 = self.new
  dog_3.name = "Zoey"
  dog_3.breed = "Poodle"
  dog_3.sex = "Female"
  dog_3.size = "Small"
  dog_3.color = "White"
  
  [dog_1, dog_2, dog_3]
  
end


  
end
