import Foundation
/*
소요시간 50분.. 너무 레벨 1인데 구현 문제 더 빨리 할 수 있도록 해야할 거 같음.
오래 걸리는 이유는 계속 내가 짠 코드가 맞나 의심함. 그리고 검증을 너무 많이 함.
일단 짜놓고 수정하는 방법으로 계속 풀어나가야 할 거 같음.

구현 문제다. 딱히 알고리즘은 없음.
(R라이언, T튜브), (C콘, F프로도), (J제이지, M무지), (A어피치, N네오) -> 순서 바뀔 수 있음
 각 유형당 설문지. 캐릭터의 첫번째는 비동의 선택지를 받으면 받는 성격유형. 두번째는 동의.

다른 코드비교해보면 아주 다양한 풀이가 존재 함. 딕셔너리를 이용한 풀이도 있었고, 스위치를 사용하는 사람도 있음.
일단 내 코드가 가장 수준이 낮다고 생각했음. 그 이유는 if문 남발로 인한 코드 수 증가(난잡함)
다른 사람들은 내장 함수를 활용해서 더 간결하게 표현 함. 다른 사람코드를 보고 배워야 할 점이 많다.
*/
func solution(_ survey:[String], _ choices:[Int]) -> String {
    let length: Int = survey.count
    let scores: [Int] = [0, -3, -2, -1, 0, 1, 2, 3] // 설문지 점수 리스트
    var finalScore: [Int] = [0, 0, 0, 0] // 각 유형 별 점수 저장
    var ans: String = ""
    
    for i in 0..<length {
        let type: [String] = survey[i].map { String($0) }
        
        if type[0] < type[1] {
            finalScore[checkType(type)] += scores[choices[i]]
        } else {
            finalScore[checkType(type)] -= scores[choices[i]]
        }
    }
    for i in 0..<4 {
        if finalScore[i] == 0 || finalScore[i] < 0 {
            if i == 0 { ans += "R" } 
            else if i == 1 { ans += "C" } 
            else if i == 2 { ans += "J" }
            else if i == 3 { ans += "A" }
        }
        else {
            if i == 0 { ans += "T" } 
            else if i == 1 { ans += "F" } 
            else if i == 2 { ans += "M" }
            else if i == 3 { ans += "N" }
        }
    }
    return ans
}

func checkType(_ type: [String]) -> Int {
    if type[0] == "R" || type[0] == "T" { return 0 }
    else if type[0] == "C" || type[0] == "F" { return 1 }
    else if type[0] == "J" || type[0] == "M" { return 2 }
    else if type[0] == "A" || type[0] == "N" { return 3 }
    else { return 99 }
}



