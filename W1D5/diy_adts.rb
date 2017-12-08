require "pry"

# Exercise 1
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

# Ex1 Test Cases
# stack1 = Stack.new
# p stack1
# stack1.add(1)
# stack1.add(2)
# stack1.add(3)
# p "Add [1,2,3] to stack1 = #{stack1}"
# stack1.remove
# p "Remove 1 element from stack1 = #{stack1}"
# stack2 = stack1.show
# stack2.add(4)
# p "stack2 = #{stack2}"
# p "stack1 = #{stack1}"

# Exercise 2
class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

# Ex2 Test Cases
# queue1 = Queue.new
# p queue1
# queue1.enqueue(1)
# queue1.enqueue(2)
# queue1.enqueue(3)
# p "Add [1,2,3] to queue1 = #{queue1}"
# queue1.dequeue
# p "Remove 1 element from queue1 = #{queue1}"
# queue2 = queue1.show
# queue2.enqueue(4)
# p "queue2 = #{queue2}"
# p "queue1 = #{queue1}"

# Exercise 3
class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index { |pair| pair[0] == key }
    if pair_index
      pair_index[1] = value
    else
      @map.push([key, value])
    end
    [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @map.reject! { |pair| pair[0] == key }
    nil
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(array)
    array.map do |el|
      if el.is_a?(Array)
        deep_dup(el)
      else
        el
      end
    end
  end
end

# Ex3 Test Cases
# map1 = Map.new
# map1.assign("fido", 4)
# map1.assign("spot", 2)
# map1.assign("clifford", 6)
# p map1
# p map1.lookup("spot")
# map1.remove("fido")
# p map1
# map2 = map1.show
# p map2
