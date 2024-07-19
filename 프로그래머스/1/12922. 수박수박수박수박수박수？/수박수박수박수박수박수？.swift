func solution(_ n:Int) -> String {
    let num = n / 2
    var ans: String = String(repeating: "수박", count: num)
    return n % 2 == 0 ? ans : ans + "수"
}