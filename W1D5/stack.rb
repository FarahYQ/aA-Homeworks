class Stack
  attr_accessor :the_stack
  def initialize
    # create ivar to store stack here!
    @the_stack = []
  end

  def add(el)
    # adds an element to the stack
    @the_stack << el
  end

  def remove
    # removes one element from the stack
    @the_stack.pop
  end

  def show
    # return a copy of the stack
    @the_stack.dup
  end

end
