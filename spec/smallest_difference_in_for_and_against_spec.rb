require 'spec_helper'
require 'smallest_difference_in_for_and_against'

describe 'Smallest Temperature Spread' do
  it 'should return the smallest temperature spread' do
    expect(smallest_difference_in_for_and_against).to eq('Leicester')
  end
end
