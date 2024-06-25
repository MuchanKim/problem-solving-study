/*
 내가 쓴 코드는 하단에 주석처리 함.
 문제에 구현하는 파트가 나와있어서 그대로 구현하였다. 한번에 정답이 나왔지만,
 다른 사람의 풀이를 보고 아직 컴퓨터의 사고방식이 아닌 인간의 사고 방식을 하는거 같다.
 나는 말그대로 숫자를 리스트로 나열하여 소수를 제외시키는 방식으로 접근하였다.
 하지만 고수분은 그런 불필요한 연산을 하지 않았다. bool값을 통해 해당 값이 존재하는지를 판별하였다.
 
 내 코드: 메모리 79508KB, 시간: 12ms
 타인 코드: 메모리 69104KB, 시간: 8ms
 
 결론: 이런 단순한 코드지만 내 코드는 성능이 30%나 떨어진다... shit
 
 */

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var cnt = 0
var arr = Array(repeating: true, count: n+1)

for i in 2..<n+1 {
    for j in stride(from: i, to: n+1, by: i) {
        if arr[j] {
            arr[j] = false
            cnt += 1
            if cnt == k {
                print(j)
                break
            }
        }
    }
}
//
//func solution(_ arr: [Int], limit: Int) {
//    var arr: [Int] = arr
//    var count: Int = 0
//    
//    while !arr.isEmpty {
//        var minNum: Int = arr[0]
//        for i in arr {
//            if i % minNum == 0 {
//                if let index = arr.firstIndex(of: i){
//                    arr.remove(at: index)
//                    count += 1
//                    if count == limit {
//                        print(i)
//                        break
//                    }
//                }
//            }
//        }
//    }
//}
//
//let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//let N: Int = input[0]
//let K: Int = input[1]
//
//var arr = Array(2...N)
//
//solution(arr, limit: K)

