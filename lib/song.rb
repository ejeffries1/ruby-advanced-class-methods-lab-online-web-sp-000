require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else Song.create_by_name(name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by do |songs|
      songs.name
    end
  end
  
  def self.new_from_filename(file)
    new_file = file.split(" - ")
    new_file.collect do |words|
      new_set = words.split(".mp3")
    binding.pry
    end
  end
end
