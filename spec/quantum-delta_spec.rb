require 'spec_helper'


describe QuantumDelta do
  # TODO: I don't know if this is actually the interface I want, but I just
  # wanted to start with an acceptance test
  it 'can generate deltas' do
    generated = QuantumDelta::Delta.generate(6)
    expect(generated).to eq [
      000000,
      000141,
      001032,
      002301,
      002442,
      011211,
      011433,
      014241,
      020202,
      020343,
      023232,
      024123,
      032142,
      033033,
      033411,
      034443,
      112332,
      114114,
      121242,
      124434,
      143442,
      233433,
      242424,
      444444,
    ]
  end


  it 'is' do
    expect(QuantumDelta).to be
  end

end
