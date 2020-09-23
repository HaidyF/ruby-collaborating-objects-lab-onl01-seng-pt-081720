class MP3Importer
  attr_accessor :path

  def initialize (filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    # @files.delete_if {|file| file == "." || file == ".."}
    return @files
  end

  def import
    delf.files.each do |file|
      song = song.new_by_filename(file)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end
end
