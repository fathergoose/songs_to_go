require 'copier'

RSpec.describe Copier do
  describe '.new' do
    it "takes two argmuents" do 
      expect(Copier).to respond_to(:new).with(2).arguments
    end
    it "assigns the arguments as pathname" do
      copier = Copier.new('./', '../')
      src_path = copier.source_path
      dst_path = copier.destination_path
      expect(src_path).to be_a(Pathname) 
      expect(src_path).to be_a(Pathname)
    end
  end

  describe "#sources" do
    it "returns an array of directories" do
      copier = Copier.new('./', './spec')
      source_dirs = copier.sources
      expect(source_dirs).to be_an(Array)
      expect(source_dirs).to include('spec')
      expect(source_dirs).not_to include('Gemfile')
      expect(source_dirs).to all( be_a(String) )
      ##expect(source_dirs).to all( be_a(Dir) )
      # Doesn't make sense, they aren't, but strings
      # But that string test makes no sense either :/
    end
  end

end
