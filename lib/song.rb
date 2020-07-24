class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name  = name 
    @artist = artist 
    @genre = genre
    @@artists << artist 
    @@genres << genre 
    @@count += 1  
  end 

  def self.count 
    @@count
  end 

  def self.artists
    @@artists.uniq 
  end 

  def self.genres
    @@genres.uniq
  end 

  def self.genre_count 
    song_hash = {}
    @@genres.each do |genre|
      #song_hash[genre] = 1
      #if genres array includes genre, set value to 1, if it includes multiple genres increase number by 1 
      if song_hash[genre]   
        song_hash[genre] += 1 
      else 
        song_hash[genre] = 1 
      end 
    end 
    song_hash 
  end 

  def self.artist_count 
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1 
      else 
        artist_hash[artist] = 1 
      end 
    end 
    artist_hash 
  end 

end 


