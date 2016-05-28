require 'copier'

RSpec.describe Copier do
  describe '.new' do
    it "takes two argmuents" do 
      expect(Copier).to respond_to(:new).with(2).arguments
    end
  end
end
