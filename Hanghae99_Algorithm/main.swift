//
//  main.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 3/31/25.
//

import Foundation

print("Hello, World!")

Day16() // 문자열 분석



/*
 시간 제한    메모리 제한    제출    정답    맞힌 사람    정답 비율
 2 초    128 MB    42525    24642    21575    59.619%
 문제
 시작 -> 실행 -> cmd를 쳐보자. 검정 화면이 눈에 보인다. 여기서 dir이라고 치면 그 디렉토리에 있는 서브디렉토리와 파일이 모두 나온다. 이때 원하는 파일을 찾으려면 다음과 같이 하면 된다.

 dir *.exe라고 치면 확장자가 exe인 파일이 다 나온다. "dir 패턴"과 같이 치면 그 패턴에 맞는
 파일만 검색 결과로 나온다. 예를 들어, dir a?b.exe라고 검색하면 파일명의 첫 번째 글자가 a이고, 세 번째 글자가 b이고, 확장자가 exe인 것이 모두 나온다. 이때 두 번째 문자는 아무거나 나와도 된다. 예를 들어, acb.exe, aab.exe, apb.exe가 나온다.

 이 문제는 검색 결과가 먼저 주어졌을 때, 패턴으로 뭘 쳐야 그 결과가 나오는지를 출력하는 문제이다. 패턴에는 알파벳과 "." 그리고 "?"만 넣을 수 있다. 가능하면 ?을 적게 써야 한다. 그 디렉토리에는 검색 결과에 나온 파일만 있다고 가정하고, 파일 이름의 길이는 모두 같다.

 입력
 첫째 줄에 파일 이름의 개수 N이 주어진다. 둘째 줄부터 N개의 줄에는 파일 이름이 주어진다. N은 50보다 작거나 같은 자연수이고 파일 이름의 길이는 모두 같고 길이는 최대 50이다. 파일이름은 알파벳 소문자와 '.' 로만 이루어져 있다.

 출력
 첫째 줄에 패턴을 출력하면 된다.
 */
//var standardString = ""
//if let input = readLine() {
//    let inputCount = Int(input) ?? 0
//    
//  
//    for i in 0 ..< inputCount {
//        let textInput = readLine() ?? ""
//        if i == 0 {
//            standardString = textInput
//        } else {
//            if standardString.index(standardString.startIndex, offsetBy: i) == textInput.index(textInput.startIndex, offsetBy: i) {
//                
//            } else {
//                let index = standardString.index(standardString.startIndex, offsetBy: i) // 3번째 문자 (0-based index)
//                standardString.replaceSubrange(index...index, with: "?") // 원하는 문자로 교체
//            }
//        }
//    }
//}
//print(standardString)


///*
// 알파벳 소문자로만 이루어진 단어가 주어진다. 이때, 이 단어가 팰린드롬인지 아닌지 확인하는 프로그램을 작성하시오.
//
// 팰린드롬이란 앞으로 읽을 때와 거꾸로 읽을 때 똑같은 단어를 말한다.
//
// level, noon은 팰린드롬이고, baekjoon, online, judge는 팰린드롬이 아니다.
//
// 입력
// 첫째 줄에 단어가 주어진다. 단어의 길이는 1보다 크거나 같고, 100보다 작거나 같으며, 알파벳 소문자로만 이루어져 있다.
//
// 출력
// 첫째 줄에 팰린드롬이면 1, 아니면 0을 출력한다.
// */
//
//// 입력 받기
//if let input = readLine() {
//    // 문자열을 뒤집은 것과 원본을 비교
//    let isPalindrome = input == String(input.reversed())
//    
//    // 결과 출력: 팰린드롬이면 1, 아니면 0
//    print(isPalindrome ? 1 : 0)
//}


