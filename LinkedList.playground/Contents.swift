//: Playground - noun: a place where people can play

import UIKit
/*
    Code By: Tebin Raouf
    Description: Creating a simple Linked List.
 
*/

class Node {
    var value: Int?
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
    init(value: Int?, next: Node?) {
        self.value = value
        self.next = next
    }
    func search(number: Int, node: Node?) -> Bool {
        
        var pointer = node
        while pointer != nil {
            
            if number == pointer?.value {
                return true
            }
            pointer = pointer?.next
            
        }
        return false
    }
    
    
    
}

class LinkedList {
    var head: Node?
    
    init() { }
    
    func first() -> Node? {
        //print(head?.value ?? -1)
        return head
    }
    func isEmpty() -> Bool {
        return head == nil
    }
    func last() -> Node? {
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        //print(currentNode?.value ?? -1)
        return currentNode
    }
    func insertFirst(value: Int) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    func append(value: Int) {
        let newNode = Node(value: value)
        let currentLast = last()
        currentLast?.next = newNode
    }
    func viewList() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.next
        }
    }
    func deleteFirst() {
        let current = head
        head = current?.next
    }
    func deleteLast() {
        var current = head
        var prev: Node?
        while current?.next != nil {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
        print("Prev: \(prev?.value ?? -1), current: \(current?.value ?? -1)")
    }
    func reverseList() {
        var current = head
        var next: Node?
        var prev: Node?
        while current != nil {
            next = current?.next
            current?.next = prev
            print("prev \(prev?.value ?? -1) - current: \(current?.value ?? -1) - next: \(next?.value ?? -1)")
            prev = current
            current = next
        }
        head = prev
    }
    func removeAll() {
        head = nil
    }
    func remove(node value: Int) {
        var currentNode = head
        var prev: Node?
        var next: Node?
        if value == currentNode?.value{
            head = currentNode?.next
        }
        while currentNode != nil {
            next = currentNode?.next
            if value == currentNode?.value{
                prev?.next = next
            }
            prev = currentNode
            currentNode = next
        }
    }
    func removeDuplicateFromSortedList() {
        var current = head
        var next: Node?
        while current != nil {
            next = current?.next
            if next?.value == current?.value {
                current?.next = next?.next
            }
            current = next
        }
    }
    func removeDuplicateFromUnsortedList() {
        var current = head
        var next: Node?
        var prev: Node?
        while current != nil {
            next = current?.next
            while next != nil {
                if current?.value == next?.value {
                    prev?.next = next?.next
                }
                prev = next
                next = next?.next
            }
            current = current?.next
        }
    }
    func nthToLastElement(head: Node, nthElement: Int) -> Node? {
        var pointer1 = head
        var pointer2 = head
        var j = 0
        while  j < nthElement - 1 {
            if pointer2.next != nil {
                pointer2 = pointer2.next!
            }
            j += 1
        }
        while pointer2.next != nil {
            pointer1 = pointer1.next!
            pointer2 = pointer2.next!
        }
        return pointer1
    }
    func nthElementToLastRecursively(head: Node?, nthElement: Int) -> Int {
        if head == nil {
            return 0
        }
        let i = nthElementToLastRecursively(head: head?.next, nthElement: nthElement) + 1
        if i == nthElement {
            print(head?.value ?? -1)
        }
        return i
    }
    func addTwoLists(_ head1: Node?, _ head2: Node?) -> Node? {
        var head1 = head1
        var head2 = head2
        var carry = 0
        var sum = 0
        var tmp: Node?
        var result: Node?
        var resultHead: Node?
        while head1 != nil || head1 != nil {
            sum = carry + (head1?.value ?? 0) + (head2?.value ?? 0)
            //carry
            if sum >= 10 {
                carry = 1
            }else {
                carry = 0
            }
            sum = sum % 10
            tmp = Node(value: sum)
            if result == nil {
                result = tmp
                resultHead = result
            }else {
                result?.next = tmp
            }
            result = tmp
            head1 = head1?.next
            head2 = head2?.next
        }
        return resultHead
    }
    //1->2->3->4->5->3 (same three)
    func findLoopBegining(_ head: Node?) -> Node? {
        var n1 = head
        var n2 = head
        
        //find the meeting point
        while n1?.next != nil {
            n1 = n1?.next
            n2 = n2?.next?.next
            if n1?.value == n2?.value {
                break
            }
        }
        n1 = head
        while n1?.value != n2?.value {
            n1 = n1?.next
            n2 = n2?.next
        }
        return n2
    }
    
}



