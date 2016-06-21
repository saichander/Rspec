class Cart

  def initialize
    @items = Hash.new
  end

  def add(item)
    if (@items.has_key? item)
      @items[:item][:quanity] += 1
    else
      @items["#{item}"] = item
    end
  end

  def value
    total = 0
    @items.each do |item, v|
      total += v[:value]*v[:quantity]
    end
    return total
  end

  def unique_items
    @items.keys.size
  end

  def empty?
    @items.nil?
  end
end
