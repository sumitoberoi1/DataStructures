import Foundation

public struct LinkedList<Value> {
    public var head:Node<Value>?
    public var tail:Node<Value>?
    public init() {}
    public var isEmpty:Bool {
        return head == nil
    }
    public mutating func push(_ val:Value) {
        if isEmpty {
            head = Node(value: val)
            tail = head
        } else {
            head = Node(value: val, next:head)
        }
    }
    public mutating func append(_ val:Value) {
        if isEmpty {
            push(val)
        } else {
            tail?.next = Node(value: val)
            tail = tail?.next
        }
    }
    public func node(at index:Int) -> Node<Value>? {
        var current = head
        var currentIndex = 0
        while current != nil {
            if (index == currentIndex) {
                return current
            }
            currentIndex += 1
            current = current?.next
        }
        return nil
    }
    public mutating func insetNodeAfter(_ node:Node<Value>, value:Value) -> Node<Value> {
        if (node === tail) {
            append(value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
}

extension LinkedList:CustomStringConvertible {
    public var description:String {
        if (isEmpty) {
            return "empty Linkde List"
        } else {
            return String(describing: head)
        }
    }
}
