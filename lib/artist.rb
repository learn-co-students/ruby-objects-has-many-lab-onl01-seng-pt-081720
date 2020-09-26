class Artist
  attr_accessor :name
  @@all_songs_ever = []

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @@all_songs_ever << song
    song.artist = self 
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    @@all_songs_ever << song
    song.artist = self
  end

  def self.song_count 
    Song.all.count 
  end

end