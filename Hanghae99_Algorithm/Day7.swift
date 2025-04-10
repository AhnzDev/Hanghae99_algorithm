//
//  Day7.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/10/25.
//

struct Day7 {
    init() {
        if let input = readLine() {
            var result = true
            for index in 0..<input.count {
                var indexCount = 0
                var numCount = 0
                for j in 0..<input.count {
                    let charIndex = input.index(input.startIndex, offsetBy: j)
                    numCount = Int(String(input[charIndex])) ?? 0
                    if index == numCount {
                        indexCount += 1
                    }
                }
                if indexCount != numCount {
                    result = false
                    break
                }
            }
        }
    }
}

func digitCount(_ num: String) -> Bool {
    for index in 0..<num.count {
        // 해당 인덱스에 필요한 갯수
        let expectedIndex = num.index(num.startIndex, offsetBy: index)
        let expectedNumber = Int(String(num[expectedIndex])) ?? 0
        var sameCount = 0
        for char in num {
            let targetNumber = Int(String(char)) ?? 0
            if index == targetNumber {
                sameCount += 1
            }
        }
        if expectedNumber != sameCount {
            return false
        }
    }
    return true
}



