func solution(_ n:Int) -> Void {
    var n: Int = n
    var i: Int = 2
    while n > 1 {
        if n % i == 0 {
            print(i)
            n = n / i
        }
        else {
            i += 1
        }
    }
}

var n: Int = Int(readLine()!)!
solution(n)