class LinkedList
  attr_reader :head, :length
  Node = Struct.new(:value, :next)

  class  << ( EmptyNode = Object.new )
    def value
      nil
    end

    def next
      self
    end

    def nil?
      true
    end
  end

  def initialize
    self.head = EmptyNode
    self.length = 0
  end

  def empty?
    self.head.nil?
  end

  def to_s
    ""
  end

  def insert(element)
    self.length = self.length + 1
    self.head = Node.new(element, self.head)
  end

  private
  def head=(val)
    @head = val
  end

  def length=(val)
    @length = val
  end
end
