require 'spec_helper'

describe QuantumDelta::Delta do
  it 'takes a period' do
    delta = QuantumDelta::Delta.new 6
    expect(delta.period).to eq 6
  end

end
