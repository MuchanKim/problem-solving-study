/*
 몸살 걸려서 한동안 들어 누웠다가 오랜만에 푸는 느낌..
 
 문제는 L ~ R까지의 수 중에 8이 가장 적게 들어있는 수의 8의 개수를 구하는 거임.
 
 문제를 보자마자 브루트포스로 코드를 짜기 시작했는데 시간 초과 뜸 ㅎㅎ
 이게 아니면 그리디인거 같아서 규칙을 찾기 시작함.
 
 일단 자리수가 다를 경우는 무조건 0이 나옴. 8이 안들어가는 숫자는 무조건 나오게 됨.
 그리고 자리수가 같을 경우, 문자열으로 변경 후 앞자리부터 찾아야 함.
 전체 자리수가 같은데 맞대응 하는 자리 숫자가 다를 경우, 카운트를 안해줘도 됨.
 카운트를 하는 경우는 맞대응 하는 자리수가 일치하고, 8일 경우를 계산하면 됨 !
 
 다른 사람 코드를 비교해보고 싶지만 아쉽게도 Swift로 이 문제를 푼 사람은 없었다. (내가 선구자 ㅎㅎ)
 */

func solution(_ startNumber: Int, _ endNumber: Int) -> Int {
    
    let startNumberString: [String] = String(startNumber).map { String($0) }
    let endNumberString: [String] = String(endNumber).map { String($0) }
    
    var result: Int = 0
    
    if startNumberString.count != endNumberString.count {
        return 0
    }
    else {
        for i in 0..<startNumberString.count {
            if startNumberString[i] != endNumberString[i] {
                break
            }
            if startNumberString[i] == endNumberString[i] && startNumberString[i] == "8" {
                result += 1
            }
        }
    }
    return result
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

print(solution(input[0], input[1]))