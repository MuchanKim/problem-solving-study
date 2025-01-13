/*
집합 문제로 Set의 내장 함수를 중 subtracting을 사용하면 쉽게 구현할 수 있었다.
오랜만에 PS Study 복귀
*/

import Foundation

func solution(_ numbers: [Int]) -> Int {
    let allNumbers = Set(0...9)
    
    let inputNumbers = Set(numbers)
    
    // allNumbers에서 주어진 숫자들을 제외한 차집합 생성
    let missingNumbers = allNumbers.subtracting(inputNumbers)
    
    return missingNumbers.reduce(0, +)
}