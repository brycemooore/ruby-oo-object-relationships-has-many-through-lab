class Artist
    @@all = []

    attr_reader :name

    def initialize(artist_name)
        @name = artist_name
        self.class.all << self
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres
        self.songs.map{|song|
            song.genre
        }
    end

    def songs
        Song.all.select{|song|
            song.artist == self
        }
    end

    def self.all
        @@all
    end
end