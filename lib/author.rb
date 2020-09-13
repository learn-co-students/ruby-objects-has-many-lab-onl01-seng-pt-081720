require 'pry'
class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    # binding.pry
    Post.all do |post|
      post.author = self
    end
  end

  def add_post(post)
    # associates post(.rb) w/author - tell it belongs to author
    # binding.pry
    post.author = self
  end

  def add_post_by_title(name)
    # creates new post - associates to author
    # binding.pry
    post = Post.new(name)
    post.author = self
  end

  def self.post_count
    # => total num of posts associated to all authors
    # binding.pry
    Post.all.count
  end
end