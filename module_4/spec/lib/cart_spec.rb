require 'spec_helper'
require 'cart'

describe Cart do

  before :each do
    @cart = Cart.new
  end

  it "should be properly initialized" do
    expect(@cart).to be_a(Cart)
  end

  context " a new cart" do
    it "contains no items" do
      expect(@cart).to be_empty
    end
  end
end

