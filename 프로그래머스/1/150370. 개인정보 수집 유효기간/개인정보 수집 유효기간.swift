/*
 이번엔 2시간이나 걸렸다. 솔직히 구현하는데 1시간만에 했는데
 테스트케이스 20개 중 하나가 계속 걸려서 안됐음..
 if문 남발하다 이번엔 년 월 일을 가중치를 두고 계산하는 방법을 씀.
 구현 문제다 보니 다른 사람들 코드도 길이는 비슷한거 같음.
 
 논리 연산으로 제어하는 사람이 대부분이던데, 나는 가중치 두고 계산 함.
 가중치 둔 기준은
 일수의최대(28)가 월수의 최소(1)보다 무조건 작아야 함. 그래서 편하게 100으로 가중치 설정.
 월수의최대(12)* 100가 년수의 최소(1)보다 무조건 작아야 함. 1200보다 작아야 하므로 편하게 10000을 곱해줌.
 
 1. getExpirationOptionDict - 만기옵션을 딕셔너리 화. [String] -> [String: Int]
 2. calculateExpirationDates - 만기 날짜 계산. [String], [String: Int] -> [[Int]]
 
 이제부터 맨 위 코멘트에 코드 설명 + 코드라인에도 코멘트 달거임.
*/

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let tday: [Int] = today.split(separator: ".").map { Int(String($0))! }
    let todaySum: Int = tday[0] * 10000 + tday[1] * 100 + tday[2]
    var answer: [Int] = []
    
    let dates: [[Int]] = calculateExpirationDates(privacies, getExpirationOptionDict(terms))
    
    var index: Int = 1
    
    for date in dates {
        let dateSum: Int = date[0] * 10000 + date[1] * 100 + date[2]
        
        if todaySum >= dateSum {
            answer.append(index)
        }
        index += 1
    }
    
    return answer
}

// 옵션 별로 기간을 저장 ex) [A: 5, B: 2]
func getExpirationOptionDict(_ terms:[String]) -> [String: Int] {
    var expiration: [String: Int] = [:]
    
    for term in terms {
        let termData: [String] = term.split(separator: " ").map { String($0) }
        expiration[termData[0]] = Int(termData[1])!
    }
    
    return expiration
}

func calculateExpirationDates(_ privacies:[String], _ expirationOpion: [String: Int]) -> [[Int]] {
    var dates: [[Int]] = []
    
    for privacy in privacies {
        let privacyDatas: [String] = privacy.split(separator: " ").map { String($0) }
        let date: [Int] = privacyDatas[0].split(separator: ".").map { Int(String($0))! }
        
        var (year, month, day) = (date[0], date[1], date[2])
        
        // 만기 옵션은 달 기준이므로 옵션에 일치하는 숫자를 month에 더 함.
        if let op = expirationOpion[privacyDatas[1]] {
            month += op
        }
        // month가 12보다 클 시 몫 만큼 year에 더해주고, 나머지는 month
        if month > 12 {
            year += month / 12
            if month % 12 == 0 {
                year -= 1
                month = 12
            }else {
                month %= 12
            }
        }
        dates.append([year, month, day])
    }
    
    return dates
}