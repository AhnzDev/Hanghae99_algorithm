//
//  Day2.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/2/25.
//

import Foundation

//문제
//문자열 N개가 주어진다. 이때, 문자열에 포함되어 있는 소문자, 대문자, 숫자, 공백의 개수를 구하는 프로그램을 작성하시오.
//
//각 문자열은 알파벳 소문자, 대문자, 숫자, 공백으로만 이루어져 있다.
//
//입력
//첫째 줄부터 N번째 줄까지 문자열이 주어진다. (1 ≤ N ≤ 100) 문자열의 길이는 100을 넘지 않는다.
//
//출력
//첫째 줄부터 N번째 줄까지 각각의 문자열에 대해서 소문자, 대문자, 숫자, 공백의 개수를 공백으로 구분해 출력한다.
//예제 입력 1
//This is String
//SPACE    1    SPACE
// S a M p L e I n P u T
//0L1A2S3T4L5I6N7E8
//
//예제 출력 1
//10 2 0 2
//0 10 1 8
//5 6 0 16
//0 8 9 0

class Day2 {
    init() {
        while let input = readLine() {
            var lower:Int = 0
            var upper:Int = 0
            var number:Int = 0
            var space:Int = 0
            
            for char in input {
                
                if char.isLowercase{
                    lower += 1
                } else if char.isUppercase {
                    upper += 1
                } else if char.isNumber {
                    number += 1
                } else if char == " " {
                    space += 1
                }
            }
            print("\(lower) \(upper) \(number) \(space)")
        }
    }
}
//문자열 N개가 주어진다. 이때, 문자열에 포함되어 있는 소문자, 대문자, 숫자, 공백의 개수를 구하는 프로그램을 작성하시오.
//
//각 문자열은 알파벳 소문자, 대문자, 숫자, 공백으로만 이루어져 있다.
//var upperCount = 0
//var lowerCount = 0
//var numberCount = 0
//var spacing = 0
//
//while let input = readLine() {
//    let stringInput = String(input)
//    for char in stringInput {
//        if let ascii = char.asciiValue {
//            if ascii >= 64 && ascii <= 90 {
//                upperCount += 1
//            } else if ascii >= 97 && ascii <= 122 {
//                lowerCount += 1
//            }
//        }
//        if char == " " { spacing += 1}
//        if Int(String(char)) != nil {
//            numberCount += 1
//        }
//    }
//    print("\(lowerCount) \(upperCount) \(numberCount) \(spacing)")
//}
