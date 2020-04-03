class Paws::Dog 

attr_accessor :name, :breed, :gender, :size, :color, :bio, :age, :species, :additional, :url, :desc, :basics  

@@all = []

def initialize(name, basics, breed, additional, desc)
  @name = name
  @basics = basics
  @url = url 
  @bio = bio
  @desc = desc
  @breed = breed
  @additional = additional
  save
end

def self.all 
   Paws::Paws_scraper.dog_scraper
   @@all 
  
end

def get_dog_desc
  Paws::Paws_scraper.scrape_desc(self)
end

def save 
  @@all << self
end

end
