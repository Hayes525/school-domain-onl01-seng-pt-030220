class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each do |song|
      puts song.name
    end
  end
end

sik_k = Song.new("rendevouz")
uh = Song.new("huh")
# sik_k.name
Song.all
