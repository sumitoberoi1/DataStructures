// Copyright (c) 2018 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

example(of: "Creating linked list through  Node") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    node1.next = node2;
    node2.next = node3;
    print(node1)
}

example(of: "Push") {
    //Adding Value to front of the list
    var linkedList = LinkedList<Int>()
    linkedList.push(3)
    linkedList.push(2)
    linkedList.push(1)
    print(linkedList)
}

example(of: "Append") {
    //Adding Value to front of the list
    var linkedList = LinkedList<Int>()
    linkedList.append(3)
    linkedList.append(2)
    linkedList.append(1)
    print(linkedList)
}

example(of: "Node at") {
    //Adding Value to front of the list
    var linkedList = LinkedList<Int>()
    linkedList.append(3)
    linkedList.append(2)
    linkedList.append(1)
    print(linkedList.node(at: 0)?.value ?? "Empty")
}


