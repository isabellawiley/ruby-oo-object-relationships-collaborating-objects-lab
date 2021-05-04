class Song
    attr_accessor :name, :artist 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def artist=(artist)
        @artist = artist
    end

    def self.all
        @@all
    end

    def self.new_by_filename

    end

    def artist_name=(name)
        if(artist.name.nil?)
            self.artist = Artist.new(name)
        else
            self.artist.name = name
        end
    end
end