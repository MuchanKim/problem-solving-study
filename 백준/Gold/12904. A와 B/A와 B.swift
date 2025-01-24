/*
 문제만 읽었을 때는 뭔말이지? 싶었는데 입력 예제를 보니 바로 이해가 됐다.
 해야 할 동작이 명확하게 보였기에 함수로 구현했다.
 1. 문자열 뒤에 A를 추가하는 작업
 2. 문자열을 뒤집고 뒤에 B를 추가하는 작업
 3. 문자열 길이가 같아졌을 때, 바뀐 문자열(S)가 T와 같은지 검증하는 작업
 
 골드 문제치고는 다소 쉬웠다.
 */

import Foundation

// 문자열의 뒤에 'A'를 추가하는 함수
func appendA(_ s: String) -> String {
    return s + "A"
}

// 문자열을 뒤집고 뒤에 'B'를 추가하는 함수
func reverseAndAppendB(_ s: String) -> String {
    return String(s.reversed()) + "B"
}

// S를 T로 변환 가능한지 확인하는 함수
func solution(_ s: String, _ t: String) -> Int {
    var target = t

    while target.count > s.count {
        if let lastChar = target.last {
            target.removeLast() // 마지막 문자 제거
            if lastChar == "B" {
                target = String(target.reversed()) // 뒤집기
            }
        }
    }
    
    return target == s ? 1 : 0
}

// 입력 처리
if let s = readLine(), let t = readLine() {
    print(solution(s, t))
}