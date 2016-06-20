require 'spec_helper'
require 'triangle'

describe Triangle do
  it 'lengths should be valid' do
    triangle = Triangle.new(1,2,3)
    triangle.should be_valid
  end
end

describe "test" do
  it 'is equilateral' do
    triangle = Triangle.new(1,1,1)
    expect(triangle.type).to eq("equilateral")
  end

  it 'is isoceles' do
    triangle = Triangle.new(1,1,2)
    expect(triangle.type).to eq("isoceles")
  end

  it 'is scalene' do
    triangle = Triangle.new(1,2,3)
    expect(triangle.type).to eq("scalene")
  end
end
