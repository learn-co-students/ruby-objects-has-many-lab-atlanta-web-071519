require 'pry'
require_relative 'artist'

class Song
    @@all = []
    attr_accessor :artist, :name
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end
    def self.all
        @@all
    end
    def artist_name
        if self.artist
        self.artist.name
        end
    end
end