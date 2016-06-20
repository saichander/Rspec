class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    valid?
  end

  def type
    if (@a == @b) && (@b === @c)
      return "equilateral"
    elsif (@a == @b) || (@b == @c) || (@c == @a)
      return "isoceles"
    elsif (@a != @b) && (@b != @c) && (@c != @a)
      return "scalene"
    else
      "invalid"
    end
  end

  def valid?
    if (@a > 0) && (@b > 0) && (@c > 0)
      return true
    else
      false
    end
  end
end
