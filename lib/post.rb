class Post
    attr_accessor :author, :name, :title

    @@all = []

    def initialize(title)
        @title = title
        @name = name
        @author = author
        @@all << self
    end
    def self.all
        @@all
    end

    def author_name
        if @author == nil
            return nil
        else
            @author.name
        end
    end
end