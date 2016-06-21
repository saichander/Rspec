require 'spec_helper'
require 'cart'

describe Cart do
  before :each do
    @cart = Cart.new
  end

  it "total value should be 0" do
    expect(@cart.value).to equal(0)
  end
end

describe "cart" do
  before :each do
    @cart = Cart.new
  end

  it "is no longer empty after adding an item" do
    item1 = {value: 100, quantity: 1}
    @cart.add item1
    expect(@cart).not_to be_empty
  end

  it "total value should be equal to sum of each item value in its quantity" do
    item1 = {value: 100, quantity: 1}
    item2 = {value: 300, quantity: 1}
    value = item1[:value] + item2[:value]
    @cart.add item1
    @cart.add item2
    expect(@cart.value).to equal(value)
  end

  it "increase in items count should not increase unique items count" do
    item1 = {value: 100}
    @cart.add item1
    count = @cart.unique_items
    @cart.add item1
    expect(@cart.unique_items).to equal(count)
  end
end

