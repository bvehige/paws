#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.paws.org/adopt/dogs/"
  doc = Nokogiri::HTML(open("https://www.paws.org/adopt/dogs/"))
  
  section = doc.css("div.card-block__grid")
  dog = section.css("article.card-block__item")
  #dog_name = dog.css("h3.card-block__title")
  dog.each do |n|
    name = n.css("h3.card-block__title").text
    #gender = n.css("h3.span.card-block__label").text
    bio = n.css("span.card-block__label").text.gsub("   "," ")
    Paws::Dog.new(name, bio)
  end
  end
  #dog.name = dogs  
  #:breed, :gender, :size, :color, :bio, :age, :species, :spayed_neutered 


end
