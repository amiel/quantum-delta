require 'spec_helper'

describe QuantumDelta::InvalidDeltaCombinations do
  it 'returns the list of invalid combinations for a period' do
    c = QuantumDelta::InvalidDeltaCombinations.new(4)
    expect(c.invalid_combinations).to eq %w[
      3 02 11 20 001 010 100
    ]
  end

  it 'returns the list of invalid combinations for a bigger period' do
    c = QuantumDelta::InvalidDeltaCombinations.new(5)
    expect(c.invalid_combinations).to eq %w[
      4 03 12 21 30 002 011 020 101 110 200 0001 0010 0100 1000
    ]
  end


end
