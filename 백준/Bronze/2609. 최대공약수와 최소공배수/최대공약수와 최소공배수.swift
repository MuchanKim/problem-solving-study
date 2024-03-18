
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

print(gcd(a, b))
print(lcm(a, b))