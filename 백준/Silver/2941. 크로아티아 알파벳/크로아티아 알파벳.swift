import Foundation
var word = readLine()!
["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="].forEach {
    word = word.replacingOccurrences(of: $0, with: "1")
}
print(word.count)