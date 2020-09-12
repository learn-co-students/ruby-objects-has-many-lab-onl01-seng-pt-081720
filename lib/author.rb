require "pry"
class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    
  end
  
  def posts 
    Post.all.select {|the_post| the_post.author == self}
  end
  
  def add_post(this_post)
    this_post.author = self
  end
  
  def add_post_by_title(post_title)
        title = Post.new(post_title)
    add_post(title)
  end
  
  def self.post_count
    Post.all.count
  end
  
  
end