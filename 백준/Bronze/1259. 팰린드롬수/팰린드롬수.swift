import Foundation

func solution(_ str: String) -> String {
    return String(str.reversed())
}

while true {
    let n: String = readLine()!
    
    if n == "0" {
        break
    }
    let reversedN = solution(n)
    
    print(reversedN == n ? "yes" : "no")
}