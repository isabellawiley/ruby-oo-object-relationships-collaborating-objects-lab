require "pry"
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def name=(name)
        @name = name
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        @@all.each do |artist|
            if(artist.name == name)
                artist
            else
                new_artist = Artist.new(name)
                @@all << new_artist
                new_artist
            end
        end
    end

    def print_songs
        Song.all.map {|song| song.artist == self}
    end
end
# binding.pry