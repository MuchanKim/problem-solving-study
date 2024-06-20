func checkGroupWord(_ word: String) -> Int {
    var count: Int = 0
    var prevChar: Character = "0"
    var check: Bool = true  // true = 그룹 단어, false = 그룹 단어 x
    var charSet: Set<Character> = []
    
    for char in word {
        if charSet.contains(char) {
            if prevChar != char {
                check = false
            }
        }
        else {
            charSet.insert(char)
            prevChar = char
        }
    }
    if check {
        count += 1
    }
    
    return count
}

var n: Int = Int(readLine()!)!
var cnt: Int = 0

for _ in 0..<n {
    let word: String = readLine()!
    cnt += checkGroupWord(word)
}

print(cnt)