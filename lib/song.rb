class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(input_artist)
    @artist = input_artist
    input_artist.songs << self
  end

  def artist_name
    if @artist == nil
      return nil
    else
      return @artist.name
    end
  end


end
