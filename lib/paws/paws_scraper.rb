#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.paws.org/adopt/dogs/"
  doc = Nokogiri::HTML(open("https://www.paws.org/adopt/dogs/"))

  #name =  
  #:breed, :gender, :size, :color, :bio, :age, :species, :spayed_neutered  
  
  binding.pry
end


end
