class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
    }
}

class SimpleLinkedList {
    
    private var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    public func append(value: String) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            tailNode.next = newNode
        }
        else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }

    
    public func removeAll() {
      head = nil
      tail = nil
    }
    
    public func remove(node: Node) {
        var current = self.head
        var previous: Node? = nil
        
        while current != nil {
            
            if current?.value == node.value {
                
                if previous != nil {
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    previous?.next = current?.next
                    
                } else {
                    
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    self.head = current?.next
                }
            }
            
            previous = current
            current = current?.next
        }
    }
}
