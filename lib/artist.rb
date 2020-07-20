
class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.add_song(song)
    song.artist = self
  end
  
end


# describe '#add_song' do
#     it 'keeps track of an artist\'s songs' do
#       artist = Artist.new('Michael Jackson')
#       song_one = Song.new("Rock With You")
#       song_two = Song.new("Smooth Criminal")
#       smells_like_teen_spirit = Song.new("Smells Like Teen Spirit")
#       artist.add_song(song_one)
#       artist.add_song(song_two)
#       expect(artist.songs).to eq([song_one, song_two])
#     end
#   end