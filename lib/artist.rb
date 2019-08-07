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
  
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if 
      self.find(name)
      self.find(name)
    else
      artist = Artist.new(name)
      @@all << artist
      artist
    end
  end
  
  def pint_songs
    
  end
  
  
end