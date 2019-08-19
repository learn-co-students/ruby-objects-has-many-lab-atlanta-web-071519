require 'pry'
require_relative 'song.rb'

class Artist

    @@artist = []
    attr_accessor :name,:songs
    def initialize(name)
        @name = name
        @songs = []
        @@artist << self
    end


def songs
    @songs
end

def add_song(song)
    song.artist = self
    @songs << song
    
end

def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
end

def self.song_count
    Song.all.count
    #binding.pry
end
end    
    




