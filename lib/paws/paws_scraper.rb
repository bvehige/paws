#require 'pry'
#require 'Nokogiri'

class Paws::Paws_scraper

def dog_scraper
  dogs = []
  doc = Nokogiri::HTML(open("https://www.paws.org/adopt/dogs/"))

  dogs
end


end
