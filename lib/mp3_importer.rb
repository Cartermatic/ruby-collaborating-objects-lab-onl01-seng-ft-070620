class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.children("spec/fixtures/mp3s/")
  end
  
  def import
    files.each{|file| }.new_by_filename
  end
  
end