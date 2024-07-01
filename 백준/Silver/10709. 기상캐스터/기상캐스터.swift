import Foundation

let input: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }
let H: Int = input[0]
let W: Int = input[1]

for _ in 0..<H {
    let cloudPosition: [String] = readLine()!.map { String($0) }  // 구름 위치
    var recentCloud: Int = -1  // 최근 구름 뜬 위치
    var ans: [Int] = []  // 결과 리스트
    
    for i in 0..<W {
        if cloudPosition[i] == "c" {
            ans.append(0)
            recentCloud = i
        } else {
            if recentCloud == -1 {
                ans.append(-1)
            } else { ans.append(i - recentCloud) }
        }
    }
    for i in ans {
        print(i, terminator: " ")
    }
}
