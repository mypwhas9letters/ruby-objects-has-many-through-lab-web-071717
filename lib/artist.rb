require 'pry'
class Artist

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  self.songs << song
  song.artist = self
end

def song
  @songs
end

def genres
  @songs.collect do |song|
    song.genre
end
end
end
