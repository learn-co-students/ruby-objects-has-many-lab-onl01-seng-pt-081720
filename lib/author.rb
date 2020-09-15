class Author 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @all 
  end 
  
  def posts
    Post.all.select {|post| post.author == self}
  end 
  
end 