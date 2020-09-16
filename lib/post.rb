class Post  
  attr_accessor :name, :author , :title 
  
  @@all = []
  
  def initialize(name)
    @name= name
    @author=author 
    @title=title 
    @@all << self
  end
  
  def initialize(title)
    @title = title 
    @@all<< self 
  end 
  
  
  def self.all
    @@all
  end
  
  
   def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
     
end 