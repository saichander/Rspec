class Zombie
  attr_accessor :name, :brains
  def initialize
    @name = 'Bash'
    @brains = 0
  end

  def hungry?
    false
  end
end
