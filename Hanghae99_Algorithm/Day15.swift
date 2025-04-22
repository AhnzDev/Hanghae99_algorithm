//
//  Day17.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/21/25.
//
import Foundation

class Day15: NSObject {
    override init() {
        // 입력 받기
        let n = Int(readLine()!)! // 첫번째 입력 : 몇명의 학생수가 있는지
        let students = readLine()!.split(separator: " ").map { String($0) } // 두번재 입력 : 학생들의 이렵을 나열

        // 인기도 카운트 딕셔너리 초기화
        var popularity: [String: Int] = [:]
        for student in students {
            popularity[student] = 0 // 학색의 인기도를 0으로 초기화
        }

        // 각 학생이 좋아하는 학생 정보 받아서 인기도 증가
        for _ in 0..<n {
            let likes = readLine()!.split(separator: " ").map { String($0) }
            for likedStudent in likes {
                popularity[likedStudent, default: 0] += 1 // 나머지 입력 값 중 학생과 같은 이름이 포함되어있으면 학생 카운트 1개를 증가
            }
        }

        // 정렬: 인기도 내림차순, 이름 오름차순
        let sortedResult = popularity.sorted {
            if $0.value != $1.value { // 인기도가 같지 않으면 인기도가 높은 순
                return $0.value > $1.value
            } else { // 인기도가 같으면 사전순
                return $0.key < $1.key
            }
        }

        // 결과 출력
        for (student, count) in sortedResult {
            print("\(student) \(count)")
        }
    }
}
