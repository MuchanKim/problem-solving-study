let n = Int(readLine()!)!
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
array.sorted(by: <).forEach { print($0) }