class LRUCache
  def initialize
    @cache = []
    @size = 6
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle

    if @cache.include?(el)
      @cache.delete(el)
    elsif count == @size
      @cache.shift
    end
    @cache << el
    # @cache.each_with_index do |current_el,idx|
    #   if current_el == el
    #     @cache = @cache.take(idx) + @cache.drop(idx+1) + [el]
    #     return el
    #   end
    # end
    # if count == @cache.length
    #   @cache = @cache.drop(1) + [el]
    # else
    #   @cache.last = el
    # end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
    nil
  end

  private
  # helper methods go here!

end
