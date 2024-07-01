/*
 구름이 있던 자리를 체크 하여 거리를 계산하면 됨.
 현재 위치에서 최근 구름의 위치를 빼주면 됨.
 근데 이제 동쪽에 구름이 없을 경우를 생각해야함. 이 경우 -1을 출력해야함.
 그래서 최근구름 위치 변수의 초기값을 -1로 정해놓음. 그래서 구름이 없을 경우 -1를 리스트에 추가함
 그리고 구름이 뜨면 최근 구름 위치를 현재 구름 위치로 초기화 시켜주고 반복.
 
 다른 사람 코드를 보니까 -1으로 아예 2차원 배열을 초기화해서 풀었음.
 근데 이런 유형의 문제를 보면 다들 배열을 다 초기화 시켜놓고 시작하는거 같음..
 이게 좋은 방법인가 생각해보게 됨. 다음 이런 문제를 풀면 이 방식으로 풀어봐야겠음..
 다른 사람의 코드가 거의 없어서 비교하기가 애매한데, 배열 -1로 초기화해서 푸신 분 보다는
 코드 라인 수랑 실행 시간이 짧게 나오긴 함. 이런 유형 문제 많이 풀어봐야 할 듯.
 
 */

import Foundation

let input: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }
let H: Int = input[0]
let W: Int = input[1]

for _ in 0..<H {
    let cloudPosition: [String] = readLine()!.map { String($0) }  // 구름 위치
    var recentCloud: Int = -1  // 최근 구름 뜬 위치
    var ans: [Int] = []  // 결과 리스트
    
    for i in 0..<W {
        if cloudPosition[i] == "c" {
            ans.append(0)
            recentCloud = i
        } else {
            if recentCloud == -1 {
                ans.append(-1)
            } else { ans.append(i - recentCloud) }
        }
    }
    for i in ans {
        print(i, terminator: " ")
    }
}
