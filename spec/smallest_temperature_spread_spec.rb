require 'spec_helper'
require 'smallest_temperature_spread'

describe 'Smallest Temperature Spread' do
  it 'should return the smallest temperature spread' do
    expect(smallest_temperature_spread).to eq('14')
  end
end
