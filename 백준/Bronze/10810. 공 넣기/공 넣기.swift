import Foundation
var nums = readLine()!.split(separator: " ").map {Int($0)!}
var arr = [Int]()

for _ in 0..<nums[0] {
    arr.append(0)
}

for _ in 0..<nums[1] {
    var threeNums = readLine()!.split(separator: " ").map {Int($0)!}
    var tmp = 0
    
    for i in threeNums[0]-1..<threeNums[1]{
        arr[i] = threeNums[2]
    }
}

for i in 0..<arr.count {
    print(arr[i], terminator: " ")
}