enum CommandType: String {
    case push
    case pop
    case size
    case empty
    case front
    case back
}

let n = Int(readLine()!)!
var queue: [String] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    guard let command = CommandType(rawValue: input[0]) else {
        break
    }
    
    switch command {
    case .push:
        queue.append(input[1])
    case .pop:
        print(queue.isEmpty ? -1 : queue.removeFirst())
    case .size:
        print(queue.count)
    case .empty:
        print(queue.isEmpty ? 1 : 0)
    case .front:
        print(queue.first ?? -1)
    case .back:
        print(queue.last ?? -1)
    }
}