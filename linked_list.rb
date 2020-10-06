class Node # :nodoc:
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList # :nodoc:
  # setup head and tail
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(number)
    node = Node.new(number)

    if !head
      self.head = node
    else
      current = head

      current = current.next_node while current.next_node

      current.next_node = node
    end

    self.size += 1
  end

  def get(index)
    current = head
    count = 0

    while current
      return current.value if count == index

      count += 1
      current = current.next_node
    end
  end

  def add_at(index, item)
    current = head
    new_node = Node.new(item)
    if index.zero?
      self.head = Node.new(item, current)
    else
      count = 0
      previous = nil

      while count < index
        previous = current
        current = current.next_node
        count += 1
      end
      new_node.next_node = current
      previous.next_node = new_node
    end
    self.size += 1
  end

  def remove_at(index)
    return if index.negative? || index > self.size

    current = head
    previous = nil
    count = 0

    if index.zero?
      self.head = current.next_node
    else
      while count < index
        previous = current
        current = current.next_node
        count += 1
      end

      previous.next_node = current.next_node
    end
    self.size -= 1
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
list.remove_at(2)

p list