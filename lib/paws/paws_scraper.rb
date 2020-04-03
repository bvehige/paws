
class Paws::Paws_scraper

def self.dog_scraper
  dogs = []
  url = "https://www.whatcomhumane.org/adopt/#animal-Dog"
  doc = Nokogiri::HTML(open(url))
  
  section = doc.css("div.petgrid-container.Dog")
  #url = section.css("a.card-block__link").attr("href") - was going to try to go to a second level webpage.  
  section.each do |n|
    name = n.css("div.petgrid-name").text
    basics = n.css("ul.feature-ul").text
    breed = n.css("div.pet-breeds").text
    additional = n.css("div.pet-options").text.strip
    desc = n.css("div.description").text.strip.gsub("-", "").gsub(":", "")
    #url = n.css("a.card-block__link").attr("href") - was going to try and go to a second level webpage.  
    Paws::Dog.new(name, basics, breed, additional, desc)
  end
  
  end

   
   def self.scrape_desc(dog)
     #was going to try to use this method to scrape from a second level webpage. 
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
