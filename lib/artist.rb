require 'pry'
class Artist
    attr_accessor :name, :songs
    

    def initialize(name)
        @name = name
        @songs = Array.new
    end



    def songs
        @songs.name = Song.new(self)
    end
end