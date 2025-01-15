/*
3진법.. 생소하다. 변수명을 위해 검색하니 ternary라고 표현한다고 함!
3진수 구하는 법은 아래와 같음.
1. %연산자를 통해 3으로 나눈 나머지를 구한다.
2. 나온 나머지(0, 1, 2 값 중 하나)를 ternary에 이어붙인다.

그리고 앞뒤반전은 reversed 함수로 쉽게 구현이 가능했다.

10진수 변환은 아래 문법을 통하여 쉽게 변환이 가능하다!
Int(_ text: String, radix: Int)
*/

import Foundation

func solution(_ n: Int) -> Int {
    // 1. 3진법으로 변환
    var n = n
    var ternary = ""
    while n > 0 {
        ternary = "\(n % 3)" + ternary
        n /= 3
    }
    
    // 2. 3진법을 뒤집음
    let reversedTernary = String(ternary.reversed())
    
    // 3. 뒤집힌 3진법을 10진법으로 변환
    let decimal = Int(reversedTernary, radix: 3)!
    
    return decimal
}