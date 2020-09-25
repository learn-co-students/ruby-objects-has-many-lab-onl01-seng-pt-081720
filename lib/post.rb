class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author_full_name = nil
        if self.author != nil
            author_full_name = self.author.name
        end
        author_full_name
    end



end