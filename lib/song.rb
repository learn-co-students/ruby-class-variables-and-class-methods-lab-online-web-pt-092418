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
    @@gen = @@genres.reduce({}){|g,n| g[n] += 1; g}
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
