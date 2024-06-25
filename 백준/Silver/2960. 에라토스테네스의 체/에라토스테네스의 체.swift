import Foundation

func solution(_ arr: [Int], limit: Int) {
    var arr: [Int] = arr
    var count: Int = 0
    
    while !arr.isEmpty {
        var minNum: Int = arr[0]
        for i in arr {
            if i % minNum == 0 {
                if let index = arr.firstIndex(of: i){
                    arr.remove(at: index)
                    count += 1
                    if count == limit {
                        print(i)
                        break
                    }
                }
            }
        }
    }
}

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let N: Int = input[0]
let K: Int = input[1]

var arr = Array(2...N)

solution(arr, limit: K)