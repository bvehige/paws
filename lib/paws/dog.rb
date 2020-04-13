class Paws::Dog 

attr_accessor :name, :breed, :additional, :url, :desc, :basics  

@@all = []

def initialize(name, basics, breed, additional, desc)
  @name = name
  @basics = basics
  @url = url 
  @desc = desc
  @breed = breed
  @additional = additional
  save
end

def self.all 
  Paws::Paws_scraper.dog_scraper
  @@all 
end

def save 
  @@all << self
end

end
