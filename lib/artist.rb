require 'pry'
class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    #binding.pry
    Song.all do |song|
      song.artist = self
    end
  end

  def add_song(song)
    # takes in song as arg
    # binding.pry -- err dropping into pry, due to error in song.rb def initialize: @@all << "self" !name
    # get song into array --> in song.rb
    song.artist = self
    # associates song w/artist
  end

  def add_song_by_name(name)
    # binding.pry
    song = Song.new(name)
    # creates new Song by name
    song.artist = self
    # associates song(.rb) and artist
  end

  def self.song_count
    # => total num of Songs w/all artists
    # binding.pry
    Song.all.count
    # => 3
  end
end