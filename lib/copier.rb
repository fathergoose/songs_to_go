require 'fileutils'

class Copier
  attr_reader :source_dir, :destination_dir

  def initialize(source_dir, destination_dir)
    @source_dir = Dir.new(source_dir)
    @destination_dir = Dir.new(destination_dir)
  end

end
