class Song
    @@all = []

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        self.class.all << self
    end 

    def self.all
        @@all
    end
end