require 'pry'
class Post
    attr_accessor :title, :author
    @@all = []


    def initialize(title)
        @title = title
        @author = nil
        @@all << self
        
    end

    def self.all
        @@all
        #binding.pry
    end

    def author_name
        if @author.nil?
            nil
        else
            @author.name
        end
    end


end