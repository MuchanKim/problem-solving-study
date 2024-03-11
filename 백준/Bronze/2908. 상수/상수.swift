let nums = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
print(nums.max()!)