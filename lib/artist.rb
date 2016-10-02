class Artist

  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
      @@all.detect {|artist| artist.name == name}
    else
      @@all << Artist.new(name)
      @@all.last
    end
  end

end
