require 'process_test'
require 'pry'

describe Process do
  it 'responds to #pid' do
    expect(Process).to respond_to :pid
  end

  context "after importing java class" do
    before do
      java_import org.process_test.Process
    end

    it 'responds to #pid' do
      expect(Process).to respond_to :pid
    end

    it 'responds to #pid with global namespace' do
      expect(::Process).to respond_to :pid
    end

  end
end

