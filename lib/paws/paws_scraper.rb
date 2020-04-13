
class Paws::Paws_scraper

def self.dog_scraper
  url = "https://www.whatcomhumane.org/adopt/#animal-Dog"
  doc = Nokogiri::HTML(open(url))
  
  section = doc.css("div.petgrid-container.Dog")
  section.each do |n|
    name = n.css("div.petgrid-name").text
    basics = n.css("ul.feature-ul").text
    breed = n.css("div.pet-breeds").text
    additional = n.css("div.pet-options").text.strip
    desc = n.css("div.description").text.strip.gsub("-", "").gsub(":", "")
    Paws::Dog.new(name, basics, breed, additional, desc)
  end
end
end
