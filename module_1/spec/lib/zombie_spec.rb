require "spec_helper"
require 'zombie'
describe Zombie do
  it 'is named Bash' do
    zombie = Zombie.new
    zombie.name.should == 'Bash'
  end

  it 'has_no_brains' do
    zombie = Zombie.new
    zombie.brains.should be < 1
  end

  it 'is_hungry' do
    zombie = Zombie.new
    zombie.should_not be_hungry
  end
end
