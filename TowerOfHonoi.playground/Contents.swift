/*
 - Problem & Explain of The Towers of Hanoi: https://youtu.be/UuIneNBbscc
 - Solution to Towers of Honoi Problem Using Stack
 */

import UIKit

struct Stack {
    private var stackArray: [Int]
    
    init() {
        stackArray = [Int]()
    }
    var top: Int {
        if let last = stackArray.last {
            return last
        }
        return -1
    }
    var isEmpty: Bool {
        return stackArray.isEmpty
    }
    mutating func push(value: Int) {
        stackArray.append(value)
    }
    mutating func pop() -> Int? {
        return stackArray.popLast()
    }
}
struct Tower {
    var disks: Stack
    var index: Int
    init(index: Int) {
        disks = Stack()
        self.index = index
    }
    mutating func add(value: Int) {
        if !disks.isEmpty && disks.top <= value {
            print("violating rule")
        }else {
            disks.push(value: value)
        }
    }
    mutating func moveTop(to destination: inout Tower) {
        let top = disks.pop()
        if let t = top {
            destination.add(value: t)
        }
    }
    mutating func moveDisks(_ n: Int, _ destination: inout Tower, _ buffer: inout Tower) {
        if n > 0 {
            moveDisks(n-1, &buffer, &destination)
            moveTop(to: &destination)
            buffer.moveDisks(n-1, &destination, &self)
        }
    }
    
}
extension Tower: CustomStringConvertible {
    var description: String {
        return "\(disks) Tower: \(index)"
    }
}

//Code Setup
var tower00 = Tower(index: 0)
var tower01 = Tower(index: 1)
var tower02 = Tower(index: 2)
var towers = [tower00, tower01, tower02]

//Create n disks on the zero tower
var n = 3
while n >= 0 {
    towers[0].add(value: n)
    n -= 1
}
//Initially towers[0] has the disks [3,2,1,0] if n = 3
print(towers[0])  //Stack(stackArray: [3, 2, 1, 0]) Tower: 0

//Move n disks to the destination tower towers[2]
var numberOfDisks = 4
towers[0].moveDisks(numberOfDisks, &towers[2], &towers[1])

//after moving towers[0] disks, towers[0] will be empty.
print(towers[0]) //Stack(stackArray: []) Tower: 0

//towers[1] is used as a buffer tower to make the moves between towers[0] & towers[2]
print(towers[1]) //Stack(stackArray: []) Tower: 1

//after moving, towers[2] will have the disks: [3,2,1,0] if n = 3
print(towers[2]) //Stack(stackArray: [3, 2, 1, 0]) Tower: 2









