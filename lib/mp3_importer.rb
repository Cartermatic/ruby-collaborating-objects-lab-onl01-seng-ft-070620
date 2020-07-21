class MP3Importer
  
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.children("spec/fixtures/mp3s/")
  end
  
  def import
    
  end