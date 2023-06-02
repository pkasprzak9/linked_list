# frozen_string_literal: false

require_relative './node'

class LinkedList
  attr_reader :head, :length

  def initialize
    @head = nil
    @length = 0
  end

  def prepend(value)
    node = Node.new(value, @head)
    @head = node
    @length += 1
  end

  def unshift
    @head = @head.next_node
    @length -= 1
  end

  def append(value)
    prev = at_index(@length - 1)
    prev.next_node = Node.new(value)
    @length += 1
  end

  def pop
    prev = at_index(@length - 2)
    prev.next_node = nil
    @length -= 1
  end

  def contains?(value)
    current = @head
    while current
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  def find_value(value)
    current = @head
    index = 0
    while current
      return index if current.value == value

      index += 1
      current = current.next_node
    end
  end

  def at_index(index)
    return nil if index.negative? || index >= @length

    current = @head
    index.times do
      current = current.next_node
    end
    current
  end

  def insert_at(index, value)
    prepend(value) if index.zero?

    prev = at_index(index - 1)
    return nil if prev.nil?

    prev.next_node = Node.new(value, prev.next_node)
    @length += 1
  end

  def print
    output = ''
    current = @head
    while current
      output = "#{output} #{current.value} ->"
      current = current.next_node
    end
    puts "#{output} nil"
  end

  def tail
    at_index(length - 1)
  end
end
