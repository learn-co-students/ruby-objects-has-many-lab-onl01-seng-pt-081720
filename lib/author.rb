class Author
  attr_accessor :name, :post
 
  @@all_posts_ever = []
  
  def initialize(name)
    @name = name
  end

  def posts 
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    @@all_posts_ever << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title) 
    self.posts << post 
    @@all_posts_ever << self 
    post.author = self 
  end

  def self.post_count
    Post.all.count 
  end
end 