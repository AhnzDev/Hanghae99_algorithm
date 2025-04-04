//
//  Day4.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/4/25.
//
class Day4 {

    var myQueue: [Int]
    
    init() {
        myQueue = [] // 초기화
    }
    
    func push(_ x: Int) {
        myQueue.append(x)
    }
    
    func pop() -> Int {
        let first = myQueue.first ?? 0
        myQueue.removeFirst()
        return first
    }
    
    func peek() -> Int {
        return myQueue.last ?? 0
    }
    
    func empty() -> Bool {
        return myQueue.isEmpty
    }
}
