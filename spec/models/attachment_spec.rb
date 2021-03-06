RSpec.describe Attachment do
  describe "associations" do
    specify { should belong_to(:channel) }
    specify { should belong_to(:user) }
  end
  
  describe "#url" do
    subject { double('attachment', url: 'some_string', file: 'file') }
    
    it "should return a string file_name" do
      expect(subject.url).to eq('some_string')
    end
  end
end
