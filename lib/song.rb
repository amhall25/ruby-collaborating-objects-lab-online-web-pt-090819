
class Song
  attr_accessor :name, :artist
  @@all=[]
  
  def initialize (name, artist=nil)
    @name= name
    @artist= artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  

    
  def self.new_by_filename(file_name)
    songname =(file_name.split(" - ")[0])
    artist_name = (file_name.split(" - ")[1])
    newsong=self.new(songname)
    newsong.artist = Artist.find_or_create_by_name.name(artist_name)
    
  
    
  end
  
  
    

  
end