require 'bool_attr_accessor'

describe Person do

  let(:ben) { Person.new("5'11") }
  let(:ethel) { Person.new("not as tall as ben") }

  it 'knows how tall it is' do
    expect(ben.height).to eq "5'11"
  end

  it 'creates an attribute reader method for' do
    expect(ethel.height).to eq "not as tall as ben"
  end

  it 'can write an attribute' do 
    ethel.height = 10 
    expect(ethel.height).to eq 10  
  end

end