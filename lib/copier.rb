class Copier
  attr_reader :source_dir, :destination_dir

  def initialize(source_dir, destination_dir)
    @source_dir = source_dir
    @destination_dir = destination_dir
  end

end
