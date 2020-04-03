class Paws::Dog 

attr_accessor :name, :breed, :gender, :size, :color, :bio, :age, :species, :spayed_neutered, :url, :desc  

@@all = []

def initialize(name, bio, url)
  @name = name
  @url = url 
  @bio = bio
  @desc = desc
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
