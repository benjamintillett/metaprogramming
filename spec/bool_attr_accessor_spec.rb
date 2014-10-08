require 'bool_attr_accessor'

describe Person do

  let(:ben) { Person.new("5'11", "hairy", true) }
  let(:ethel) { Person.new("not as tall as ben", "not so hairy", false) }

  it 'knows how tall it is' do
    expect(ben.height).to eq "5'11"
  end

  it 'knows how hairy it is' do 
    expect(ethel.hairiness).to eq 'not so hairy'
  end

  it 'creates an attribute reader method for' do
    expect(ethel.height).to eq "not as tall as ben"
  end

  it 'can write an attribute' do 
    ethel.height = 10 
    expect(ethel.height).to eq 10  
  end

  it "can read an attribute with a ? " do
    expect(ben.great?).to eq true
  end

  it 'can write to an attriubte with a ?' do
    ben.great = false
    expect(ben.great?).to eq false
  end

end