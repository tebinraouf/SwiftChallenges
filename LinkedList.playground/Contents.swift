//: Playground - noun: a place where people can play

import UIKit
/*
    Code By: Tebin Raouf
    Description: Creating a simple Linked List.
 
*/

class Node {
    var value: Int?
    var next: Node?
    
    init(value: Int?, next: Node?) {
        self.value = value
        self.next = next
    }
}

//1->2->3->4
let nodeFour = Node(value: 4, next: nil)
let nodeThree = Node(value: 3, next: nodeFour)
let nodeTwo = Node(value: 2, next: nodeThree)
let nodeOne = Node(value: 1, next: nodeTwo)

//Loop through all nodes with their next values given the head node.
func printLinkedList(head: Node?){
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

printLinkedList(head: nodeOne) //1 2 3 4

