/*
 오늘의 회고록..
 오랜만에 또 문제를 푼다. 이게 흐름을 타면 매일매일 푸는데.
 최근에 몸살 + 가정사때문에 쉬다가 하니 또 귀찮다.
 그래도 해야지.
 
 이제부터 IDE안쓰고 문제 풀기로 했다.
 코딩테스트를 볼 날이 언제일진 모르겠지만 코테를 보면 IDE를 못쓰게 하는 경우가 많다.
 그래서 나도 그렇게 할려고.
 
 이번 문제는 아주 간단한 문제다. 그냥 약수 구하고, 조건으로 걸러주면 된다.
 약수 구하는 과정에서 처음에 O(N) 복잡도의 코드를 작성했으나
 알고리즘 공부 좀 해보니 제곱근을 이용해서 풀면 연산 수를 줄일 수 있었다.
 레벨 1을 쉽게 풀정도면 부트캠프 코딩테스트는 쉽게 통과한다는데
 난 왜 못할까.. 그 이유 -> 시간이 오래 걸려서
 1단계 위주로 빠르게 풀기 + IDE 없이 풀기로 해야겠다.
 (귀차니즘으로 인하여 다른 사람 코드는 확인 못했음..)
 */

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var weapons: [Int] = []
    
    for i in 1...number {
        let weaponPower:Int = countDivisor(i)
        
        if weaponPower > limit {
            weapons.append(power)
        } else {
            weapons.append(weaponPower)
        }
    }
    
    return weapons.reduce(0, +)
}

func countDivisor(_ number:Int) -> Int {
    var count: Int  = 0
    let sqrtN = Int(Double(number).squareRoot())
    
    for i in 1...sqrtN {
        if number % i == 0 {
            if i * i == number {
                count += 1
            } else {
                count += 2
            }
        }
    }
    return count    
}