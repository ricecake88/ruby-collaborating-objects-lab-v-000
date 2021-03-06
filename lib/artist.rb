require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = [] #keeps track of an artists/instance's songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def save
    @@all  << self
  end
  
  def self.all
    @@all
  end
  
  def self.create_by_name(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
  
  def self.find_by_name(name) 
    @@all.detect {|artist| artist.name == name}
  end
    
  def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create_by_name(name)
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
end