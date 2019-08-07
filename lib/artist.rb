class Artist

attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(name)
    @songs << name
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.all.select {|artist| artist.name == name}
    artist
    
  end
  
  
end