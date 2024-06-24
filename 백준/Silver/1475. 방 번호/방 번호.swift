import Foundation

func solution(_ roomNumber: String) -> Void {
    for value in roomNumber {
        if value == "6" || value == "9" {
            numberSet[6] += 0.5
        }
        else {
            if let num = Int(String(value)) {
                numberSet[num] += 1.0
            }
        }
    }
    numberSet[6] = ceil(numberSet[6])
    
    print(Int(numberSet.max()!))
}

var numberSet: [Float] = Array(repeating: 0.0, count: 9)

let roomNumber:String = readLine()!

solution(roomNumber)
