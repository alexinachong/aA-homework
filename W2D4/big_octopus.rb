array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# Sluggish Octopus
def longest_fish_n2(fish_array)
  fish_array.each_with_index do |fish1, i|
    longest_fish = true
    fish_array.each_with_index do |fish2, j|
      next if i == j
      if fish2.length > fish1.length
        longest_fish = false
      end
    end
    return fish1 if longest_fish
  end
end

# Dominant Octopus
def quick_sort(fish_array, &prc)
  prc ||= Proc.new { |a, b| a <=> b }
  return fish_array if fish_array.length < 2

  mid = fish_array.first
  left = fish_array[1..-1].select { |el| prc.call(el, mid) == -1 }
  right = fish_array[1..-1].select { |el| prc.call(el, mid) != -1 }

  quick_sort(left, &prc) + [mid] + quick_sort(right, &prc)
end

def longest_fish_nlogn(fish_array)
  prc = Proc.new { |a, b| a.length <=> b.length }
  quick_sort(fish_array, &prc).last
end

# Clever Octopus
def longest_fish_n(fish_array)
  longest_fish_length = fish_array.first.length
  longest_fish = fish_array.first

  fish_array.each do |fish|
    if fish.length > longest_fish_length
      longest_fish_length = fish.length
      longest_fish = fish
    end
  end
  longest_fish
end

# Dancing Octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# Slow Dance
def slow_dance(direction, direction_array)
  direction_array.each_with_index do |tile, i|
    return i if tile == direction
  end
end

# Constant Dance!
tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, direction_hash)
  direction_hash[direction]
end
