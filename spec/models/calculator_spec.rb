require_relative '../spec_helper'
RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of its arguments' do
    	puts Calculator.new.add(1, 2),"dddddddddddd"
      puts expect(Calculator.new.add(1, 2)).to eq(3)
    end
  end
end