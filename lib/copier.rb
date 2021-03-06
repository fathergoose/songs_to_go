require 'pathname'

class Copier
  attr_reader :source_path, :destination_path
  
  def initialize(source_dir, destination_dir)
    @source_path = Pathname.new(source_dir)
    @destination_path = Pathname.new(destination_dir)
  end

  def sources
    Dir.chdir(@source_path) do
      Dir.glob('*').select do |f|
        File.directory?(f)
      end
    end
  end

end
