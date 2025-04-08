import Foundation

func solution(_ schedules: [Int], _ timelogs: [[Int]], _ startday: Int) -> Int {
    // 상품을 받을 수 있는 직원 수
    var res = 0
    
    // 각 직원별로 체크
    for i in 0..<schedules.count {
        let schedule = schedules[i]  // 희망 출근 시각
        let logs = timelogs[i]       // 실제 출근 기록
        
        // 출근 인정 시각 계산 (10분 추가)
        let limitTime = addMin(schedule)
        
        var isPass = true  // 직원 출근 상태 추적
        
        // 모든 평일 출근 시각이 정상인지 확인
        for j in 0..<7 {
            let currentDay = (startday - 1 + j) % 7
            if currentDay < 5 && logs[j] > limitTime {
                isPass = false  // 지각 표시
                break  // 내부 루프 종료
            }
        }
        
        // 모든 평일 출근이 정상인 경우만 카운트
        if isPass {
            res += 1
        }
    }
    
    return res
}

func addMin(_ time: Int) -> Int {
    // 시간을 분으로 변환 (8:50 -> 530분)
    let totalMin = (time / 100 * 60) + (time % 100) + 10
    
    // 다시 시:분 형태로 변환
    return (totalMin / 60 * 100) + (totalMin % 60)
}