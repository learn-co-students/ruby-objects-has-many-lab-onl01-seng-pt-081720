
require "pry"
class Artist 
  
  attr_accessor :name
  
  
  
  def initialize(name)
    @name = name 
    
    
  end
  
  def songs
     #access the Song class and get all the songs. Find a way to only select those whose artist is the current artist
   Song.all.select {|the_song| the_song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end

  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
      Song.all.count
      
  end
  
  
    
  
  
  
end