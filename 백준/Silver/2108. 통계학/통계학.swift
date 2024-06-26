import Foundation

func solution(_ arr: [Int], _ len: Int) -> Void {
    print(getAverageInt(arr, len))
    print(getMedianInt(arr, len))
    print(getModInt(arr, len))
    print(getRangeInt(arr, len))
}

func getAverageInt(_ arr: [Int], _ len: Int) -> Int {
    let sum: Int = arr.reduce(0, +)
    return Int(round(Float(sum) / Float(len)))
}

func getMedianInt(_ arr: [Int], _ len: Int) -> Int {
    if len % 2 == 0{
        return (arr[len/2] + arr[(len/2)+1]) / 2
    }
    else {
        return arr[len/2]
    }
}

func getModInt(_ arr: [Int], _ len: Int) -> Int {
    var toDict: [Int : Int] = [:]
    var mode: Int = 0
    
    for i in arr {
        if let _ = toDict[i] {
            toDict[i]! += 1
        } else {
            toDict[i] = 1
        }
    }
    
    let maxCount: Int = toDict.values.max()!
    var modeCandidates: [Int] = []
    
    for (key, count) in toDict {
        if count == maxCount {
            modeCandidates.append(key)
        }
    }
    if modeCandidates.count == 1 {
        mode = modeCandidates[0]
    }
    else {
        modeCandidates.sort()
        mode = modeCandidates[1]
    }
    
    return mode
}

func getRangeInt(_ arr: [Int], _ len: Int) -> Int {
    return abs(arr[0] - arr[len-1])
}


let N: Int = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<N {
    let n: Int = Int(readLine()!)!
    arr.append(n)
}
arr.sort()

solution(arr, N)
