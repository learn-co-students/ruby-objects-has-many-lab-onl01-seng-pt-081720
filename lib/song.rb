class Song
    attr_accessor :name, :songs, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist_name = nil
        if self.artist != nil
            artist_name = self.artist.name
        end
        artist_name
    end

end