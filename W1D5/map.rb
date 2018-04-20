class Map

  def initialize
    @map = []
  end

  def assign(key,value)
    match = false
    @map.map! do |key_value_pair|
      if key == key_value_pair[0]
        match = true
        [key, key_value_pair[1]+value]
      else
        key_value_pair
      end
    end
    @map << [key,value] unless match
    @map
  end

  def lookup(key)
    @map.each do |key_value_pair|
      return key_value_pair[1] if key_value_pair[0] == key
    end
  end

  def remove(key)
    @map.reject! {key_value_pair| key_value_pair[0] == key }
  end

  def show
    @map.dup
  end

end
