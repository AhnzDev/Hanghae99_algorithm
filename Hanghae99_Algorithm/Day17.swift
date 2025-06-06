//
//  Day17.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/23/25.
//
/*
 Given two integer arrays arr1 and arr2, and the integer d, return the distance value between the two arrays.
 
 The distance value is defined as the number of elements arr1[i] such that there is not any element arr2[j] where |arr1[i]-arr2[j]| <= d.
 
 
 
 Example 1:
 
 Input: arr1 = [4,5,8], arr2 = [10,9,1,8], d = 2
 Output: 2
 Explanation:
 For arr1[0]=4 we have:
 |4-10|=6 > d=2
 |4-9|=5 > d=2
 |4-1|=3 > d=2
 |4-8|=4 > d=2
 For arr1[1]=5 we have:
 |5-10|=5 > d=2
 |5-9|=4 > d=2
 |5-1|=4 > d=2
 |5-8|=3 > d=2
 For arr1[2]=8 we have:
 |8-10|=2 <= d=2
 |8-9|=1 <= d=2
 |8-1|=7 > d=2
 |8-8|=0 <= d=2
 Example 2:
 
 Input: arr1 = [1,4,2,3], arr2 = [-4,-3,6,10,20,30], d = 3
 Output: 2
 Example 3:
 
 Input: arr1 = [2,1,100,3], arr2 = [-5,-2,10,-3,7], d = 6
 Output: 1
 */
import Foundation


class Day17 {
    init() {
        debugPrint(#fileID,#function,"ahnz - <#comment#>")
    }
    
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var count = 0
        
        for int1 in arr1 {
            var isValid = true // 기본적으로 카운트 할 수 있다고 가정
            
            for int2 in arr2 {
                let distance = abs(int1 - int2)
                if distance <= d {
                    isValid = false // 하나라도 조건을 만족하면 카운트 못 함
                    break // 더 볼 필요 없음
                }
            }
            
            if isValid {
                count += 1 // 모든 조건 통과 → 카운트
            }
        }
        
        return count
    }
    
    func findTheDistanceValue2(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        return arr1.filter { int1 in
            arr2.allSatisfy { int2 in
                abs(int1 - int2) > d
            }
        }.count
    }
}
