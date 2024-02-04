let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var names: Set<String> = []
var answer: [String] = []

for _ in 0..<n {
    let name = readLine()!
    names.insert(name)
}

for _ in 0..<m {
    let name = readLine()!
    if names.contains(name) {
        answer.append(name)
    }
}

print(answer.count)
answer.sorted().forEach { print($0) }