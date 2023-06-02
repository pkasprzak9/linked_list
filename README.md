# Linked List Implementation

This is a simple implementation of a linked list data structure in Ruby. It includes two classes: `LinkedList` and `Node`. The `LinkedList` class represents a linked list and provides various methods to manipulate and traverse the list. The `Node` class represents individual nodes in the linked list.

## Features

- **Prepend**: Add a new node with a given value at the beginning of the linked list.
- **Unshift**: Remove the first node from the linked list.
- **Append**: Add a new node with a given value at the end of the linked list.
- **Pop**: Remove the last node from the linked list.
- **Contains**: Check if a specific value is present in the linked list.
- **Find Value**: Find the index of the first occurrence of a specific value in the linked list.
- **At Index**: Access the node at a specific index in the linked list.
- **Insert At**: Insert a new node with a given value at a specific index in the linked list.
- **Print**: Print the values of all nodes in the linked list.
- **Tail**: Get the last node in the linked list.

## Usage

1. Create a new instance of the `LinkedList` class:
```ruby
linked_list = LinkedList.new
```

2. Perform various operations on the linked list:
```ruby
linked_list.prepend(value)
linked_list.unshift
linked_list.append(value)
linked_list.pop
linked_list.contains?(value)
linked_list.find_value(value)
linked_list.at_index(index)
linked_list.insert_at(index, value)
linked_list.print
linked_list.tail
```

## Example

```ruby
# Create a new linked list
linked_list = LinkedList.new

# Add nodes to the linked list
linked_list.prepend(5)
linked_list.append(10)
linked_list.append(15)

# Print the linked list
linked_list.print
# Output: 5 -> 10 -> 15 -> nil

# Remove the first node
linked_list.unshift

# Print the updated linked list
linked_list.print
# Output: 10 -> 15 -> nil

# Check if the linked list contains a value
puts linked_list.contains?(10)
# Output: true

# Find the index of a value in the linked list
puts linked_list.find_value(15)
# Output: 1

# Get the node at a specific index
node = linked_list.at_index(1)
puts node.value
# Output: 15

# Insert a new node at a specific index
linked_list.insert_at(1, 20)

# Print the final linked list
linked_list.print
# Output: 10 -> 20 -> 15 -> nil

# Get the last node in the linked list
tail = linked_list.tail
puts tail.value
# Output: 15
```

## Contributors
https://github.com/pkasprzak9
