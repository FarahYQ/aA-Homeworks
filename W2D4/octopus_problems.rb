
#O(n2) search
def sluggish_octopus(fish_array)
  (0...fish_array.length-1).each do |i|
    (fish1+1...fish_array.length).each do |j|
      longest = fish_array[j] if fish_array[j].length > fish_array[i].length
    end
  end
  longest
end


# O(nlogn) search
class Array
  def merge_sort(&prc)
    prc ||= Proc.new {a,b a <=> b }
    return self if length <= 1

    mid = length/2
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left,right,&prc)
  end

  private
  def self.merge(left,right,&prc)
    merged = []
    case prc.call(left.first, right.first)
    when -1
      merged << left.shift
    when 0
      merged << left.shift << right.shift
    when 1
      merged << right.shift
    end

    merged + left + right
  end
end


def nlong_longest_fish(fishes)
  prc ||= Proc.new {a,b a <=> b }
  fishes.merge_sort(&prc).last
end


#linear search
def biggest_fish(fishes)
  biggest = fishes.first
  fishes.each do |fish|
    if fish.length > biggest.length
      biggest = fish
    end
  end
  longest
end


def slow_dance(dir,tiles_array)
  tiles_array.each_with_index do |tile, idx|
      return idx if tile == dir
    end
  end

  tiles_hash = {"up" => 0, "right-up" => 1, "right"=> 2,
      "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,
      "left-up" => 7}

  def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
  end
