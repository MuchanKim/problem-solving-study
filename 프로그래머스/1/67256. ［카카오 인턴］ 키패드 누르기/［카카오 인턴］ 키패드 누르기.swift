/*
 카카오 문제를 최근에 풀고 있는데 그나마 가장 쉬운 수준의 문제는 1시간 정도면 푸는 거 같다.
 이번에는 거리 계산이 필요한 문제여서 맨해튼 알고리즘을 사용함.
 
 조건문 남발을 줄이기 위해서 노력을 하고 있는데, 이번에 쓴 저 방법이 좋은지는 모르겠다.
 unused라고 xcode가 알려주고있다. -> 할당 연산을 묶어서 삼항 연산자를 사용하는 것은 잘못된 방법이라고 함. 그래서 고침.
 <기존 코드>
 leftDistance < rightDistance ? (answer += "L", leftHandPosition = numbers[i]) : (answer += "R", rightHandPosition = numbers[i])
 <수정 코드>
 if leftDistance < rightDistance {
     answer += "L"
     leftHandPosition = numbers[i]
 } else {
     answer += "R"
     rightHandPosition = numbers[i]
 }
 
 이제 어느정도는 Swift에 익숙해진거 같음. 그래서 당분간 개발 위주로 해볼까 고민 중. 어쨌거나 개발 못하면 말짱 도루묵
 근데 문제 푸는게 재미들리니까 계속 풀게됨. 알고리즘 공부 욕심 생기는 듯?? 근데 아직 앱 개발 0회 ㄷㄷ
 */

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    // 왼손 초기값 * = 10, 오른손 초기값 # = 11
    var leftHandPosition: Int = 10
    var rightHandPosition: Int = 11
    var answer: String = ""
    var myHand: String {
        get {
            return hand == "left" ? "L" : "R"
        }
    }
    
    for i in 0..<numbers.count {
        let num: Int = numbers[i]
        switch num {
        case 1, 4, 7:
            answer += "L"
            leftHandPosition = numbers[i]
        case 3, 6, 9:
            answer += "R"
            rightHandPosition = numbers[i]
        case 2, 5, 8, 0:
            let leftDistance: Int = getDistanceFromKeypad(leftHandPosition, numbers[i])
            let rightDistance: Int = getDistanceFromKeypad(rightHandPosition, numbers[i])
            
            // 양쪽 거리차가 같을 경우
            if leftDistance == rightDistance {
                answer += myHand
                myHand == "L" ? (leftHandPosition = numbers[i]) : (rightHandPosition = numbers[i])
            } else {
                if leftDistance < rightDistance {
                    answer += "L"
                    leftHandPosition = numbers[i]
                } else {
                    answer += "R"
                    rightHandPosition = numbers[i]
                }
            }
        default:
            print("input error")
        }
    }
    
    return answer
}


// 좌표 찾는 함수  * = 10, # = 11
func getKeyPadCoordinate(_ position: Int) -> [Int]? {
    let keypad: [Int: [Int]] = [1: [0, 0], 2: [0, 1], 3: [0, 2],
                                4: [1, 0], 5: [1, 1], 6: [1, 2],
                                7: [2, 0], 8: [2, 1], 9: [2, 2],
                                10: [3, 0], 0: [3, 1], 11: [3, 2]]
    
    if let coodinate = keypad[position] {
        return coodinate
    } else { return nil }
}

// 거리를 구하는 함수(맨해튼 알고리즘 사용)
func getDistanceFromKeypad(_ position: Int, _ target: Int) -> Int {
    if position == target {
        return 0
    }
    let n1: [Int] = getKeyPadCoordinate(position)!
    let n2: [Int] = getKeyPadCoordinate(target)!
    
    return abs(n1[0] - n2[0]) + abs(n1[1] - n2[1])
}
