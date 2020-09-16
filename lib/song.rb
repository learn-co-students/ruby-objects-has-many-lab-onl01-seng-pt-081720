class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name)
    @name= name
    @artist=artist
    @genre=genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
     
  
end