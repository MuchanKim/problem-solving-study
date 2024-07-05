/*
 최근 시험 친 값을 기억했다가... 어쩌구 저저구... 스택임을 알았다.
 
 먼저 공백을 분리한 값들 중 첫번 째 값이 과제가 있고, 없고를 구분하기 때문에 나눠 줌.
 근데 여기서 첫 값이 0인데 과제를 받지 않았을 경우 아무것도 안하기 때문에, 0인 케이스는 과제가 있는 조건을 추가해 줌.
 자 그럼 첫번 째 값이 1일 경우를 보겠음.
 과제를 받자마자 하기 때문에, 시간에서 바로 1을 빼줌. 그리고 남은 시간이 0이면 바로 스코어에 추가 함.
 이렇게 한 이유는 쓸 데 없이 append를 남발하지 않기 위해서임. (가독성은 떨어지나..)
 만약에 시간이 아직 더 남았다? 그러면 그 문제 점수랑 남은 시간을 묶어서 배열에 저장 함.
 
 입력 값이 0일 경우, 가장 최근 받은 과제를 함. 마지막 인덱스의 두번 째 값이 시간임. 거기에 -1을 해줌.
 그 값이 0이 될 경우 그 점수를 더해주고, 값을 지워 줌.
 
 다른 사람 코드를 비교하려고 검색했는데, 게시글이 하나 밖에 안뜬다.. 그 사람이 코드가 더 깔끔해보이는데 돌려보진 않았다.
 그 사람은 1이면 바로 append하고 처리를 했다. 그리고 이 사람 코드를 보면서 알아낸 사실인데
 Int($0)!보다 Int(String($0))!이 빠르다는 것이었다... 앞으로 이걸 써야겠음. 그리고 왜 빠른지도 알아봐야겠음.
 */

import Foundation

let N:Int = Int(readLine()!)!

var score: Int = 0
var scoreAndTime: [[Int]] = []

for i in 0..<N {
    
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    if input[0] == 1{
        if input[2] - 1 == 0 {
            score += input[1]
        }
        else { scoreAndTime.append([input[1], input[2]-1]) }
    }
    if !scoreAndTime.isEmpty && input[0] == 0 {
        var endIndex = scoreAndTime.endIndex - 1
        scoreAndTime[endIndex][1] -= 1
        
        if scoreAndTime[endIndex][1] < 1 {
            score += scoreAndTime[endIndex][0]
            scoreAndTime.popLast()
        }
    }
}
print(score)
