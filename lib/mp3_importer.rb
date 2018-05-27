require 'pry'
class MP3Importer
  
  @@all = []
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def path
    @file_path
  end
  
   def import
    allMp3Files = Dir.glob(@file_path + "/*.mp3").select {|f| File.file?(f) }
<<<<<<< HEAD
    @@all = allMp3Files.map {|file| Song.new_by_filename(File.basename(file))}
    puts @@all
=======
    allMp3Files.map do |file|
     name_artist_genre = File.basename(file)
     Song.new_by_filename(name_artist_genre)
    end
>>>>>>> 00c9e45b4ee25cc5e067b15d990ab4130807e835
  end
  
  def files
   allMp3Files = Dir.glob(@file_path + "/*.mp3").select {|f| File.file?(f) }
   @files = allMp3Files.map {|file| File.basename(file)}
  end
end