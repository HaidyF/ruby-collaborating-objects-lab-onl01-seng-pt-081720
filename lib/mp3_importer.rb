class MP3Importer
  attr_accessor :path

  def initialize (filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
    return @files
  end

  def import
    self.files.each do |file|
      new_song = Song.new_by_filename(file)
      Artist.all << new_song.artist unless Artist.all.include?(song.artist)
    end
  end
end
