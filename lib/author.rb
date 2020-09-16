class Author 
  attr_accessor :name, :posts 

  def initialize(name)
    @name = name
  end
  
def posts 
Post.all.select do |post|
post.author == self
end 
end 
  
def add_post (post)
  post.author = self 
end   
  
def add_post_by_title (post_name) 
 writer = Post.new(post_name)
 add_post(writer)
  end 
  
  
def self.post_count 
  Post.all.count 
end 

 def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end 
