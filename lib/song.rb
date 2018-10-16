require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end
  def self.genres
    @@genres.uniq!
  end
  def self.artists
    @@artists.uniq!
  end
  def self.genre_count
    Hash[@@genres.group_by {|x| x}.map{|k,v| [k,v.count]}]
    # group_by wil return a hash where the keys are the values in the array,
    # and the values are the total of same values {rap=>["rap","rap"], pop=>["pop"]}.
    #with the map you are meerly counting the values in the array
    #binding.pry
  end
  def self.artist_count
    Hash[@@artists.group_by {|x| x}.map{|k,v| [k,v.count]}]
  end
end
