require 'pry'
class Song
  attr_accessor :name, :artist 
  @@all =[]

  def initialize(name) 
    @name =name
    @artist =artist
   self.class.all << self 
  end 

  def self.all
     @@all 
    
  end 

  def artist
     @artist
           
  end 

    def artist_name
      if self.artist !=nil
         self.artist.name 
      else
        self.artist = nil
      end 
    end 
end 

