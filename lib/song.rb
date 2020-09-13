require 'pry'
class Song

  attr_accessor :name, :artist
  # no need for :title or :artist_name, name of song and artist relates to artist.rb
  @@all = []
  # class var = array

  def initialize(name)
    # arg !=title, =name
    @name = name
    @@all << self
  end

  def self.all
    #returns all instances
    @@all
  end

  def artist_name
    # binding.pry
    # knows the name of its artist
    if self.artist
      self.artist.name
      # => nil if no artist
    end
  end
end