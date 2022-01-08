require 'pry'
class Song

  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@genres << genre 
    @@artists << artist 
  end

  def self.count 
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end 

  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    # Iterate over "genres" array, 
    # if genre is unique, add genre to hash
    # if genre is not unique, increment count of
    # that genre by 1    
    #binding.pry
    @@genres.tally
    #{"rap" => 5, "rock" => 1, "country" => 3}
  end 

  def self.artist_count
    @@artists.tally
    # => {"Beyonce" => 17, "Jay-Z" => 40}
  end 

end #End of class Song 