class Cart

  def initiliaze
    @items = Hash.new
  end

  def add(item)
    if (@items.has_key? item)
      @items[item] += 1
    else
      @items[item] = 1
    end
  end

  def value
    total = 0
    @items.each do |item|
      total += item[:value]*@items[item]
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
