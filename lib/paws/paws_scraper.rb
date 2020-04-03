#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.paws.org/adopt/dogs/"
  doc = Nokogiri::HTML(open("https://www.paws.org/adopt/dogs/"))
  
  section = doc.css("div.card-block__grid")
  dog = section.css("article.card-block__item")
  #url = section.css("a.card-block__link").attr("href")
  #dog_name = dog.css("h3.card-block__title")
  dog.each do |n|
    name = n.css("h3.card-block__title").text
    url = n.css("a.card-block__link").attr("href")
    #gender = n.css("h3.span.card-block__label").text
    bio = n.css("span.card-block__label").text.gsub("   "," ")
    Paws::Dog.new(name, bio, url)
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
