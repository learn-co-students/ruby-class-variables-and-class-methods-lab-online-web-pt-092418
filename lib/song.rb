class Song 
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre 
  
  @@count = 0 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
  end 
  
  def self.count
    @@count 
  end 
  
  def self.artists
  end 
  
  def self.genres
    # This array should contain only unique genres––no duplicates!
  end 
  
  def self.genre_count
  end 
  
  def self.artist_count
  end

end 