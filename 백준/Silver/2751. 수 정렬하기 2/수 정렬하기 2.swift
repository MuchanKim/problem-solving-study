let n = Int(readLine()!)!
var array: [Int] = []
var answer = ""
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
print(array.sorted().map { String($0) }.joined(separator: "\n"))