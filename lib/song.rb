require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    @@gen = Hash[@@genres.group_by {|x| x}.map{|k,v| [k,v.count]}]
    binding.pry
  end
  def self.artist_count
    @@art = Hash[@@artists.group_by {|x| x}.map{|k,v| [k,v.count]}]
  end

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
end
