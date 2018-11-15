import Foundation

public struct LinkedList<Value> {
    public var head:Node<Value>?
    public var tail:Node<Value>?
    public init() {}
    public var isEmpty:Bool {
        return head == nil
    }
    public mutating func push(_ val:Value) {
        if (isEmpty) {
            head = Node(value: val)
            tail = head
        } else {
            head = Node(value: val, next:head)
        }
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
