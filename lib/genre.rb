require 'pry'

class Genre

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def name
  @name
end

def songs
    @songs
end

def artists
  @songs.map do |songs|
      songs.artist
    end
end
end
