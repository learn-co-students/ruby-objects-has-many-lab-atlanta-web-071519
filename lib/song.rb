class Song
    attr_accessor :name, :artist
    @@all = []


    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
        
    end

    def self.all
        @@all
    end

    def my_func
        binding.pry
    end

    def artist_name
        if @artist.nil?
            nil
        else
            @artist.name
        end
    end


end