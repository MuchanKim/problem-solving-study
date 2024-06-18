import Foundation

let n = Int(readLine()!)!
var weightList: [[Int]] = []

for _ in 0..<n {
    let line = readLine()!.components(separatedBy: " ").map { Int($0)! }
    weightList.append(line)
}

for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if weightList[i][0] < weightList[j][0] && weightList[i][1] < weightList[j][1] {
            rank += 1
        }
    }
    print(rank, terminator: " ")
}