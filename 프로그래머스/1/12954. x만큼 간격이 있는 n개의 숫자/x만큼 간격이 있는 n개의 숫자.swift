/* 
Int뒤에 숫자는 bit를 의미한다. 현재 사용하는 아키텍처의 비트 수가 디폴트 값으로 쓰임.
그냥 Int 자료형으로 사용하니 타입에러가 뜸. 그래서 x를 Int64로 초기화해주고 품
난이도: 매우 쉬움
*/

func solution(_ x:Int, _ n:Int) -> [Int64] {
    let x: Int64 = Int64(x)
    var answer: [Int64] = []
    var interval: Int64 = x
    
    for _ in 1...n {
        answer.append(interval)
        interval += x
    }
    
    return answer
}