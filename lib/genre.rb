class Genre
  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
