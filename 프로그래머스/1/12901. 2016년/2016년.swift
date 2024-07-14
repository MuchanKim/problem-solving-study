/*
 내가 푼 풀이법은 딕셔너리를 활용하는 것임.
 각 월의 시작하는 요일을 알고 있다면 쉽게 풀 수 있음.
 그게 아니라면 좀 복잡해짐. 위 문제에서는 조건이 따로 없어서 쉽게 품.
 
 알고리즘 설명
 1. 해당하는 달의 시작하는 요일을 딕셔너리에서 가져옴. 값 이상한거 입력하면 -1로 뺌
 2. 단순하게 (b + startDay) % 7을 하였으나, 요일이 하루 밀림. 이유는 요일은 1부터 시작이기 때문. 그 이유로 b -1을 적용.
 3. 해당 요일을 리턴.
 */

func solution(_ a:Int, _ b:Int) -> String {
    let days: [String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    let months: [Int: Int] = [1: 5, 2: 1, 3: 2, 4: 5, 5: 0, 6: 3,
                              7: 5, 8: 1, 9: 4, 10: 6, 11: 2, 12: 4]
    let startDay: Int = months[a, default: -1]
    
    return startDay == -1 ? "Error" : days[(b-1 + startDay) % 7]
}