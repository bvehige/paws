#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.paws.org/adopt/dogs/"
  doc = Nokogiri::HTML(open("https://www.paws.org/adopt/dogs/"))
  
  section = doc.css("div.card-block__grid")
  dog = section.css("article.card-block__item")
  dog_name = dog.css("h3.card-block__title")
  dog_name.each do |n|
    name = n.text
    Paws::Dog.new(name)
  end
  end
  #dog.name = dogs  
  #:breed, :gender, :size, :color, :bio, :age, :species, :spayed_neutered  
  
end


end
