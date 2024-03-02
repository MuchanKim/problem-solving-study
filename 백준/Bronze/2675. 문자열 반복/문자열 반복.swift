func solution() {
    let input = readLine()!.split(separator: " ").map { $0 }
    let r = Int(input[0])!, s = input[1]
    print(s.map { String(repeating: $0, count: r) }.joined())
}

let t = Int(readLine()!)!
(1...t).forEach { _ in solution() }