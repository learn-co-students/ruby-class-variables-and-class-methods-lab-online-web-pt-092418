class Song 
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre 
  
  @@count = 0 
  
  # @@artists = []
  # @@artist_count = {}
  # @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    # @@count =+ 1
    # @@genres = []
    # Control for duplicates when you code your .genres class method, not when you add genres to the original @@genres array. 
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