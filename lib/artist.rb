class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(song)
        real_song = Song.new(song)
        real_song.artist = self
    end

    def self.song_count
        counter = 0
        Song.all.each do |songs|
            counter +=1
        end
        counter
    end

end