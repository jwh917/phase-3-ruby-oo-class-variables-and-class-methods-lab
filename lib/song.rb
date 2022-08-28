class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = [] 
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1    
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count 
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    puts @@genres
    @@genres.uniq
  end

  def self.artist_count
    @@artists.tally
  end

  def self.genre_count
    @@genres.tally
  end

end