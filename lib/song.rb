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
    # group_by wil return a hash where the keys are the values in the array,
    # and the values are the total of same values {rap=>["rap","rap"], pop=>["pop"]}.
    grouped = @@genres.group_by {|x| x}
    #with the map you are meerly counting the values in the array: [["rap", 2], ["pop", 1]]
    counted_groups = grouped.map{|k,v| [k,v.count]}
    # finally with the Hash[] you will convert into the hash that is nedded to pass
    Hash[counted_groups]
  end

  def self.artist_count
    Hash[@@artists.group_by {|x| x}.map{|k,v| [k,v.count]}]
  end
end
