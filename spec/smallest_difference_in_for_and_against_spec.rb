require 'spec_helper'
require 'smallest_difference_in_for_and_against'

describe 'Smallest difference in for and against goals' do
  it 'should return the smallest difference in for and against goals' do
    expect(smallest_difference_in_for_and_against).to eq('Leicester')
  end
end
