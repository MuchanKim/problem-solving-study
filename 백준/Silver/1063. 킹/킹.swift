/*
 바로 직전에 시뮬레이션 문제 쉬운건데도 벽느껴서 난이도 더 어려운 걸로 풀어봄.
 처음에는 코드 깔끔하게 작성하고 싶었으나 더 헷갈림.
 백준 문제 풀면서 100코드 넘는거 처음. 오늘 약속이 있어서 그냥 생각나는대로 줄줄이 적음.
 반복되는 코드를 함수화 해야할거 같음.
 
 근데 시뮬레이션 구현 문제가 재밌긴하네.
 깔끔하게 코드 작성하려고 노력해야겠다 ..
 
 -- 다른 사람이랑 코드 비교 --
 진심 내가 얼마나 하드 코딩한지 알 수 있었음.
 다른 사람은 코드 70~80줄 대임.
 근데 인터넷 찾아보면 사람들 코드가 어째 다 똑같음. 다른 사람이 푼거 보고 푸는가??
 풀이법이 신박함. 아스키코드로 세로 좌표를 표현해서 풀었음. ㄷㄷ
 오늘도 벽느끼고 갑니다.
 
 1. 먼저 커맨드 구분해
 2. 킹이 움직일 수 있나 확인 해.
 3. 움직일 수 있는 경우 -> 킹은 커맨드에 따라 움직임 -> 돌이랑 같은 위치인지 확인
 4. 움직일 수 없는 경우 -> 걍 넘어감.
 5. 돌이랑 같은 위치일 경우 -> 돌에게 커맨드 적용함.
 */

import Foundation

func R(position: Int) -> Int {
    return position + 1
}

func L(position: Int) -> Int {
    return position - 1
}

func T(position: Int) -> Int {
    return position + 8
}

func B(position: Int) -> Int {
    return position - 8
}

func RT(position: Int) -> Int {
    return position + 9
}

func LT(position: Int) -> Int {
    return position + 7
}

func RB(position: Int) -> Int {
    return position - 7
}

func LB(position: Int) -> Int {
    return position - 9
}

// 같은 위치 식별
func checkSamePosition(king: Int, stone: Int) -> Bool {
    return king == stone
}

// 움직일 수 있는지 여부 체크
func moveableCheck(position: Int, command: String) -> Bool {
    switch command {
    case "R": return (position + 1) % 8 == 0 ? false : true
    case "L": return (position == 0 || position % 8 == 0) ? false : true
    case "T": return 56...63 ~= position ? false : true
    case "B": return 0...7 ~= position ? false : true
    case "RT": return (position + 1) % 8 == 0 || 56...62 ~= position ? false : true
    case "LT": return (position == 0 || position % 8 == 0) || 56...62 ~= position ? false : true
    case "RB": return 0...7 ~= position || (position + 1) % 8 == 0 ? false : true
    case "LB": return 0...7 ~= position || (position == 0 || position % 8 == 0) ? false : true
    default: return false
    }
}

func chessController(unit: Int, method: (Int) -> Int) -> Int {
    return method(unit)
}

let chessMap: [String] = ["A1", "B1", "C1", "D1", "E1", "F1", "G1", "H1",
                          "A2", "B2", "C2", "D2", "E2", "F2", "G2", "H2",
                          "A3", "B3", "C3", "D3", "E3", "F3", "G3", "H3",
                          "A4", "B4", "C4", "D4", "E4", "F4", "G4", "H4",
                          "A5", "B5", "C5", "D5", "E5", "F5", "G5", "H5",
                          "A6", "B6", "C6", "D6", "E6", "F6", "G6", "H6",
                          "A7", "B7", "C7", "D7", "E7", "F7", "G7", "H7",
                          "A8", "B8", "C8", "D8", "E8", "F8", "G8", "H8"]

let input: [String] = readLine()!.components(separatedBy: " ").map { $0 }

var unitKing: Int = chessMap.firstIndex(of: input[0])!
var unitStone: Int = chessMap.firstIndex(of: input[1])!
let moving: Int = Int(input[2])!

for _ in 0..<moving {
    let command: String = readLine()!
    
    
    switch command {
    case "R": 
        if moveableCheck(position: unitKing, command: "R"){
            if checkSamePosition(king: chessController(unit: unitKing, method: R), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "R") {
                    unitKing = chessController(unit: unitKing, method: R)
                    unitStone = chessController(unit: unitStone, method: R)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: R) }
    } else { continue }
        
    case "L":
        if moveableCheck(position: unitKing, command: "L"){
            if checkSamePosition(king: chessController(unit: unitKing, method: L), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "L") {
                    unitKing = chessController(unit: unitKing, method: L)
                    unitStone = chessController(unit: unitStone, method: L)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: L) }
    } else { continue }
        
    case "B":
        if moveableCheck(position: unitKing, command: "B"){
            if checkSamePosition(king: chessController(unit: unitKing, method: B), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "B") {
                    unitKing = chessController(unit: unitKing, method: B)
                    unitStone = chessController(unit: unitStone, method: B)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: B) }
    } else { continue }
        
    case "T":
        if moveableCheck(position: unitKing, command: "T"){
            if checkSamePosition(king: chessController(unit: unitKing, method: T), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "T") {
                    unitKing = chessController(unit: unitKing, method: T)
                    unitStone = chessController(unit: unitStone, method: T)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: T) }
    } else { continue }
    
    case "RT":
        if moveableCheck(position: unitKing, command: "RT"){
            if checkSamePosition(king: chessController(unit: unitKing, method: RT), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "RT") {
                    unitKing = chessController(unit: unitKing, method: RT)
                    unitStone = chessController(unit: unitStone, method: RT)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: RT) }
    } else { continue }
        
    case "LT":
        if moveableCheck(position: unitKing, command: "LT"){
            if checkSamePosition(king: chessController(unit: unitKing, method: LT), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "LT") {
                    unitKing = chessController(unit: unitKing, method: LT)
                    unitStone = chessController(unit: unitStone, method: LT)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: LT) }
    } else { continue }
        
    case "RB":
        if moveableCheck(position: unitKing, command: "RB"){
            if checkSamePosition(king: chessController(unit: unitKing, method: RB), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "RB") {
                    unitKing = chessController(unit: unitKing, method: RB)
                    unitStone = chessController(unit: unitStone, method: RB)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: RB) }
    } else { continue }
        
    case "LB":
        if moveableCheck(position: unitKing, command: "LB"){
            if checkSamePosition(king: chessController(unit: unitKing, method: LB), stone: unitStone) {
                if moveableCheck(position: unitStone, command: "LB") {
                    unitKing = chessController(unit: unitKing, method: LB)
                    unitStone = chessController(unit: unitStone, method: LB)
                } else { continue }
            } else { unitKing = chessController(unit: unitKing, method: LB) }
    } else { continue }
    default: print("error")
    }
}

print(chessMap[unitKing])
print(chessMap[unitStone])