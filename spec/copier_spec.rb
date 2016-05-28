require 'copier'

RSpec.describe Copier do
  describe '.new' do
    it "takes two argmuents" do 
      expect(Copier).to respond_to(:new).with(2).arguments
    end
    it "assigns the arguments as directories" do
      copier = Copier.new('./', '../')
      src_dir = copier.source_dir
      dst_dir = copier.destination_dir
      expect(src_dir).to be_a(Dir) 
      expect(dst_dir).to be_a(Dir)
    end
  end

  describe ".list" do
  end

end
