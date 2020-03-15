require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'is not valid without any attributes' do
    expect(Food.new(nil)).to_not be_valid
  end

  it 'is not valid with no name attribute given' do
    args = {
      description: :goreng,
      price: 200.0
    }
    expect(Food.new(args)).to_not be_valid
  end

  it 'is not valid with no price attribute given' do
    args = {
      name: :nasigoreng,
      description: :goreng
    }
    expect(Food.new(args)).to_not be_valid
  end

  it 'is valid with no description attribute given' do
    args = {
      name: :nasigoreng,
      price: 200.0
    }
    expect(Food.new(args)).to be_valid
  end

  it 'is valid with valid attributes' do
    args = {
      name: :nasigoreng, 
      description: :goreng, 
      price: 200.0
    }
    expect(Food.new(args)).to be_valid
  end

  it 'is not valid with less than 2 name attribute length' do
    args = {
      name: :a,
      description: :goreng,
      price: 200.0
    }
    expect(Food.new(args)).to_not be_valid
  end

  it 'is valid with more than 2 name attribute length' do
    args = {
      name: :aaa,
      description: :goreng,
      price: 200.0
    }
    expect(Food.new(args)).to be_valid
  end

  it 'is not valid with more than 500 description attribute length' do
    args = {
      name: :nasigoreng,
      description: Array.new(501, 'a').join,
      price: 200.0
    }
    expect(Food.new(args)).to_not be_valid
  end

  it 'is valid with less than 500 description attribute length' do
    args = {
      name: :nasigoreng,
      description: Array.new(499, 'a').join,
      price: 200.0
    }
    expect(Food.new(args)).to be_valid
  end
end
