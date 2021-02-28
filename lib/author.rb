require 'pry'
require_relative 'post'
class Author
    attr_accessor :name

    @@total_posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts 
        @posts 
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@total_posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@total_posts.size
    end

end

# author = Author.new
# post = Post.new("Cheese")
# author.add_post(post)

# binding.pry