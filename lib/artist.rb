class Artist
  attr_accessor :name
  @@all=[]
  def initialize (name)
    @name=name
    @songs=[]
    unless self.find(name)
    @@all<< self
    end
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  
  def self.find(name)
     @@all.find {|artist| artist.name == name}
  
  end
  
  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
  def print_songs
     Song.all.select do |song| 
       if song.artist == self 
       puts song.name
     end
   end
       
     
  end
    
    
end