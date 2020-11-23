class Author


 attr_accessor :name
  # @@all =[]

  def initialize(name) 
    @name =name
  #  self.class.all << self 
  end 

  def posts
    Post.all.select do |post|
     post.author == self
    end 
  end 


  def add_post(post) #<Post:0x00007fffc60a6108 @title="Hello World", @author=nil>
    
    if post.author != nil     
      # binding.pry
    else
      post.author= self 
    end 
  end 
  

  def add_post_by_title(title)
    post = Post.new(title)
    post.title = title
    post.author =self 

  end 

  def self.post_count
    Post.all.count
  end 
end 