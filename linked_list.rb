#!/usr/bin/env ruby

class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add(value)
    if self.head.nil?
      self.head = Node.new(value, nil)
    else
      current = self.head
      while(!current.nextNode.nil?)
        current = current.nextNode
      end
      current.nextNode = Node.new(value, nil)
    end
  end
  
  def find(value)
    node = self.head
    while(!node.nil?)
      if(node.value == value)
        return true
      end
      node = node.nextNode
    end
    false
  end

  def prepend(value)
    if head.nil?
      self.head = Node.new(value, nil)
    else
      old_head = head
      self.head = Node.new(value, old_head)
    end
  end

  def remove(value)
    return if head.nil?
    node = head
    current = nil
    until(node.nil?)
      if (node.value == value)
        if !current.nil
          current.nextNode = node.nextNode
        else
          self.head = nil
        end
      end
      current = node
    node = node.nextNode
  end
  end

  private

  class Node
    attr_accessor :value, :nextNode
    
    def initialize(value, nextNode)
      self.value = value
      self.nextNode = nextNode
    end
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
puts ll.head.value
puts ll.head.nextNode.value
puts ll.find(20)
puts ll.find(70)
puts ll.find(10)
ll.prepend(5)
puts ll.find(5)
