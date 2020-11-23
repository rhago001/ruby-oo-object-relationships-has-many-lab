class Post

  attr_accessor :title, :author
  @@all =[]

  def initialize(title) 
    @title =title
    @author =author
   self.class.all << self 
  end 

  def self.all
     @@all 
    
  end 

  def title 
    @title
  end 

  def author_name
    # a = Post.all.each {|post| post.author == self.author} 
    # # self.author
    if self.author != nil
      self.author.name
        else
      self.author = nil 
    end  
  end 

end 