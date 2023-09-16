let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var opersCount = readLine()!.split(separator: " ").map { Int($0)! }
var maxValue = Int.min
var minValue = Int.max

func dfs(answer: Int, d: Int) {
    if d == n {
        maxValue = max(maxValue, answer)
        minValue = min(minValue, answer)
        return
    }
    
    for i in 0..<4 {
        if opersCount[i] < 1 {
            continue
        }
        opersCount[i] -= 1
        switch i {
        case 0:
            dfs(answer: answer + nums[d], d: d + 1)
        case 1:
            dfs(answer: answer - nums[d], d: d + 1)
        case 2:
            dfs(answer: answer * nums[d], d: d + 1)
        case 3:
            dfs(answer: answer / nums[d], d: d + 1)
        default:
            break
        }
        opersCount[i] += 1
    }
}

dfs(answer: nums[0], d: 1)

print(maxValue)
print(minValue)