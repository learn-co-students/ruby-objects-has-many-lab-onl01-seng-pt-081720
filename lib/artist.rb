require 'pry'

class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select do |song|
          song.artist == self  
        end 
    end
    
    # takes in an argument of a song and associates that song with the artist 
    # by telling the song that it belongs to that artist
    
    def add_song(song)
        # binding.pry
        song.artist = self
    end

    def add_song_by_name(song)
        # binding.pry
        new_song = Song.new(song)
        new_song.artist = self
    end

    # returns the total number of songs associated to all existing artists
    def self.song_count
        Song.all.count
    end
    
end