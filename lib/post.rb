class Post
    attr_accessor :name, :author
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        
    end

    def author=(author)
        @author = author
        @author.posts << self
    end

    def author_name
        if self.author
          self.author.name
        else
          nil
        end
    end

    def title
        @name
    end

    def self.all
        @@all
    end

end