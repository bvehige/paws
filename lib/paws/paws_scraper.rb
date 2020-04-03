#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.whatcomhumane.org/adopt/#animal-Dog"
  doc = Nokogiri::HTML(open(url))
  
  section = doc.css("div.petgrid-container.Dog")
  #dog = section.css("article.card-block__item")
  #url = section.css("a.card-block__link").attr("href")
  #dog_name = dog.css("h3.card-block__title")
  section.each do |n|
    name = n.css("div.petgrid-name").text
    basics = n.css("ul.feature-ul").text
    breed = n.css("div.pet-breeds").text
    additional = n.css("div.pet-options").text
    desc = n.css("div.description").text
    #url = n.css("a.card-block__link").attr("href")
    #gender = n.css("h3.span.card-block__label").text
    #bio = n.css("span.card-block__label").text.gsub("   "," ")
    Paws::Dog.new(name, basics, breed, additional, desc)
  end
  
  end

   
   def self.scrape_desc(dog)
     #not sure where to call this method from? 
     
     url = "https://www.paws.org/adopt/dogs/#{dog.url}"
     doc = Nokogiri::HTML(open(url))
     info = doc.css("span.pet-info__dsc")
     info.each do |d|
       des = d.text
       dog.desc << des
     end
   end
end
