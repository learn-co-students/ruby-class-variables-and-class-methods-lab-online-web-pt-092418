class Song 
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre 
  
  @@count = 0 
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@artists
  end 
  
  def self.count
    @@count 
  end
  
  def self.artists
    @@artists
  end 
  
  def self.genres
  end 
  
  def self.genre_count
  end 
  
  def self.artist_count
  end

end 