/*
1시간 넘게 걸렸다 ㅋㅋㅋ
구현문제가 재밌어서(?) 오랜만에 골드5는 풀겠지하면서 도전.
난 뭔가 문해력이 부족한가?를 느꼈다. 난이도가 높아질 수록 요구하는게 뭘까를 생각하며
한 2~3번은 읽어본 듯.. 문제를 보자마자 원형큐가 떠올랐는데 파이썬이 바로 그리워졌다...
그냥 배열로 구현했는데 아래와 같이 나눠지고 코드에 주석으로 적어놓겠음.(여기 다 적으니 가독성 떨어지는 듯)
1. 벨트 회전
2. 로봇 이동
3. 로봇 내리기
4. 새로운 로봇 올리기

 한동안 쉬운 문제 풀다가 골드로 확 올리니 시간이 좀 걸리는 군...
 but 재밌따 ㅋ
 */

import Foundation

func solution(_ n: Int, _ k: Int, _ durability: [Int]) -> Int {
    var belt = durability
    var robots = Array(repeating: false, count: n)
    var step = 0

    // 시뮬레이션 문제 풀이 시작
    while belt.filter({ $0 == 0 }).count < k {
        step += 1
        
        // 1. 벨트 회전
        // 벨트와 로봇 위치를 한 칸씩 회전.
        // 마지막 칸은 첫 번째로, 로봇이 내리는 위치는 항상 false로 설정.
        belt.insert(belt.removeLast(), at: 0)
        robots.insert(robots.removeLast(), at: 0)
        robots[n - 1] = false
        
        // 2. 로봇 이동
        // 뒤에서부터 앞쪽으로 로봇 이동. 조건은 (앞칸이 비어있고 내구도 > 0).
        for i in stride(from: n - 2, through: 0, by: -1) {
            if robots[i] && !robots[i + 1] && belt[i + 1] > 0 {
                robots[i] = false
                robots[i + 1] = true
                belt[i + 1] -= 1
            }
        }
        robots[n - 1] = false // 내리는 위치에 도달한 로봇 제거.

        // 3. 로봇 올리기
        // 올리는 위치의 내구도가 1 이상이면 로봇을 올리고 내구도를 감소시킴.
        if belt[0] > 0 {
            robots[0] = true
            belt[0] -= 1
        }
    }
    
    return step // 내구도가 0인 칸이 k 이상일 때의 step 반환.
}

// 입력 처리
if let input = readLine() {
    let inputs = input.split(separator: " ").map { Int($0)! }
    let n = inputs[0]
    let k = inputs[1]
    
    if let durabilityInput = readLine() {
        let durability = durabilityInput.split(separator: " ").map { Int($0)! }
        print(solution(n, k, durability))
    }
}