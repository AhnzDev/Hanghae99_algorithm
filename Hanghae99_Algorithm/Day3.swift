//
//  Day3.swift
//  Hanghae99_Algorithm
//
//  Created by Jihoon on 4/2/25.
//
/*
 문제
 코코의 초콜릿 가게에서 파는 초콜릿은 달달하기로 유명하다. 그래서 코코는 아래와 같은 경고문을 가게 앞에 붙이려고 한다.

 !!초콜릿 중독 주의!!

 이 문구를 유심히 보던 코코는 느낌표 사이의 문장을 지우고 그 자리에 수를 넣으면 일종의 수식이 된다는 사실을 깨달았다. 이 수식을 계산해 보자.

 이 문제에서 계산할 수식은 정수 하나와
 $0$개 이상의 느낌표로 이루어져 있다. 정수는
 $0$ 또는
 $1$이며, 느낌표는 정수의 앞이나 뒤에 올 수 있다. 이 수식을 계산하는 규칙은 다음과 같다.

  
 $n!$은
 $n$의 팩토리얼이다.
 $0!=1$,
 $1!=1$로 정의된다.
  
 $!n$은
 $n$의 논리 반전(logical not)이다.
 $!0=1$,
 $!1=0$으로 정의된다.
 팩토리얼이나 논리 반전이 중첩되어 있으면 중첩된 횟수만큼 계산하며,
 $!n!$과 같이 둘 다 사용된 경우에는 팩토리얼을 먼저 계산한다. 예를 들어,
 $!!n!!=!(!((n!) !))$이다.
 입력
 첫 번째 줄에는 수식의 개수
 $T$가 주어진다.
 $(1\le T\le 1\, 000)$

 두 번째 줄부터
 $T$개의 수식이 한 줄에 하나씩 주어진다. 하나의 수식은
 $a$개의 느낌표, 정수
 $n$,
 $b$개의 느낌표가 공백 없이 순서대로 합쳐진 형태이다.
 $(0\le a,b\le 30;$
 $0\le n\le 1)$

 출력
 각 수식을 계산한 결과를 한 줄에 하나씩 출력한다.
 */
class Day3 {
    init() {
        if let firstInput = readLine() {
            let logicCount = Int(firstInput) ?? 0
            
            for _ in 0..<logicCount {
                if let inputString = readLine() {
                    // 1. 숫자 위치 찾기 (0 또는 1)
                    if let numIndex = inputString.firstIndex(where: { $0 == "0" || $0 == "1" }) {
                        let number = Int(String(inputString[numIndex]))!
                        
                        // 2. 앞/뒤 부분 분리
                        let firstPart = inputString[..<numIndex]
                        let secondPart = inputString[inputString.index(after: numIndex)...]

                        // 3. 느낌표 개수 계산
                        let firstCount = firstPart.filter { $0 == "!" }.count
                        let secondCount = secondPart.filter { $0 == "!" }.count
                        
                        // 4. 계산 로직
                        var result = number
                        
                        // 뒤쪽 팩토리얼 먼저
                        for _ in 0..<secondCount {
                            result = calculateFactorial(of: result)
                        }
                        
                        // 앞쪽 논리 NOT 계산
                        for _ in 0..<firstCount {
                            result = logicalNot(result)
                        }

                        print(result)
                    }
                }
            }
        }
    }
    
    func calculateFactorial(of n: Int) -> Int {
        if n == 0 || n == 1 { return 1 }
        return (1...n).reduce(1, *)
    }
    
    func logicalNot(_ n: Int) -> Int {
        return n == 0 ? 1 : 0
    }
}

//func factorial(_ n: Int) -> Int {
//    if n == 0 || n == 1 { return 1 }
//    return (1...n).reduce(1, *)
//}
//
//func logicalNot(_ n: Int) -> Int {
//    return n == 0 ? 1 : 0
//}
//
//func evaluateExpression(_ expr: String) -> Int {
//    var a = 0
//    var chars = Array(expr)
//    
//    // 앞쪽 느낌표 개수 세기
//    while a < chars.count && chars[a] == "!" {
//        a += 1
//    }
//    
//    // 중앙 숫자
//    let n = Int(String(chars[a]))!
//    
//    // 뒤쪽 느낌표 개수 = 전체 길이 - 앞쪽 - 1
//    let b = chars.count - a - 1
//    
//    // 1. 뒤쪽 팩토리얼 b번 적용
//    var result = n
//    for _ in 0..<b {
//        result = factorial(result)
//    }
//    
//    // 2. 앞쪽 논리 NOT a번 적용
//    for _ in 0..<a {
//        result = logicalNot(result)
//    }
//    
//    return result
//}
//
//// 입력 처리
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let expr = readLine()!
//    print(evaluateExpression(expr))
//}
