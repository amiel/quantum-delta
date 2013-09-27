require 'spec_helper'

describe QuantumDelta::BaseIncrementer do
  it 'returns a list of things for period 6' do
    b = QuantumDelta::BaseIncrementer.new(6, 1)
    expect(b.all).to eq %w[0 1 2 3 4 5]
  end


  it 'returns a list of things for period 6 2' do
    b = QuantumDelta::BaseIncrementer.new(6, 2)
    expect(b.all).to eq %w[
      00 01 02 03 04 10 11 12 13 14 20 21 22 23 24 30 31 32 33 34 40 41 42 43 44
    ]
  end

end

