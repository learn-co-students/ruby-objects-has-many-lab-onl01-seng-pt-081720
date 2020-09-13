require 'pry'
class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def title
    # has a title = name
    @name
  end

  def self.all
    #returns [] of post instances
    @@all
  end

  def author_name
    if self.author
      self.author.name
    end
  end
end