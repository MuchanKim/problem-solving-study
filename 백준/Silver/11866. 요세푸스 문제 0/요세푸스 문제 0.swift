let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array = [Int](1...n)
var answer: [Int] = []
var index = 0

for _ in 0..<n {
    index = (index + k - 1) % array.count
    answer.append(array.remove(at: index))
}

print("<\(answer.map { String($0) }.joined(separator: ", "))>")