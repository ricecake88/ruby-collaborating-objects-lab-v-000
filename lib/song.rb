require 'pry'
class Song
  attr_accessor :name, :artist
  attr_reader :artist_name
  
  def initialize(name)
    @name = name
  end
  
<<<<<<< HEAD
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.name = name
    self.artist = artist
    self.artist.add_song(self)
  end
  
=======
  def artist
    @artist
  end
  
  def artist_name=(artist_name)
    self.artist_name = artist_name
  end

>>>>>>> 00c9e45b4ee25cc5e067b15d990ab4130807e835
  def self.new_by_filename(some_filename)
    @songs = some_filename.split(" - ")
    song = self.new(@songs[1])
    song.artist_name = @songs[0]
    song
  end
end