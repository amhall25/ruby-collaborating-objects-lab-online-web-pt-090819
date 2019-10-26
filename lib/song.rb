
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
    name =(file_name.split(" - ")[1])
    song= self.new(name)
    song.artist_name = (file_name.split(" - ")[0])
    
  end
  
  def artist_name= (name)
    Artist.find_or_create_by_name(name)
    self.Artist.add_song(self)
    
  end
  
  def artist_name
    @artist_name
  end
  
  
    

  
end