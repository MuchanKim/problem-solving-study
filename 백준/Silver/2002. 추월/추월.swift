/*
 추월한 차를 체크 하는 문제, 이것도 스택을 이용하면 됨..
 처음 터널에 입력된 차량을 순서대로 스택에 넣는다.
 reverse를 해주었는데 이유는 나중에 터널 탈출 차를 계산할 때
 첫번쨰 원소 기준으로 pop 해버리면 시간복잡도가 계속 O(N)이다.
 원소의 위치를 계속 당겨줘야하기 때문. 그래서 반대로 돌리고 계산함.
 그 외엔 별 다른 알고리즘 없는듯?? 실버 1치곤 쉽다.
 */

import Foundation

let N: Int = Int(readLine()!)!

var carList: [String] = []
var result: Int = 0

for _ in 0..<N {
    
    let inCarNumber: String = readLine()!
    carList.append(inCarNumber)
}
carList.reverse()

for i in stride(from: N-1, to: -1, by: -1){
    let outCarNumber: String = readLine()!
    
    if outCarNumber == carList[i] {
        carList.popLast()
    } else {
        if let index = carList.firstIndex(of: outCarNumber){
            carList.remove(at: index)
            result += 1
        }
    }
}
print(result)