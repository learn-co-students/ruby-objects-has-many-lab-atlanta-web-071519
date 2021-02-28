require_relative 'song'
require 'pry'

class Artist 
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    @@count = 0

    def add_song(song)
        @songs << song 
        song.artist = self
        @@count += 1 
    end

    def songs
        @songs 
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        @@count 
    end

end

stan = Song.new("Stan")
ex_calling = Song.new("Ex Calling")
artist = Artist.new("6LACK")
artist2 = Artist.new("Rich the Kid")

# artist.add_song_by_name("Stan")
# artist.add_song_by_name("Ex Calling")
# artist.add_song_by_name("Seasons")
# artist.add_song_by_name("Been A While")
# artist.add_song_by_name("Save That")



# artist.songs.collect {|song| song.genre} --> prints out all the genres
# artist.songs.select {|song| song.name == "Stan"} --> prints out all the songs with the same name

# binding.pry


