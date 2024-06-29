import Foundation

/*
다른 코드 비교하니까 또 하드코딩한걸 느꼈다. 어떤 사람은 한 줄 풀이도 있음 ..
*/

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var emptyCokeInt: Int = n  // 빈 콜라 수
    var newCokeInt: Int = 0  // 새로 받은 콜라 수
    var leftEmptyCokeInt: Int = 0  // 갯수 안맞을 때 보류 중인 빈 콜라
    
    // 보유 중인 빈병의 개수가 2개 이하이면 교환 불가
    while emptyCokeInt >= 1 {
        if emptyCokeInt % a != 0 {       // 교환 못한 나머지를 미리 빼줌
            emptyCokeInt += leftEmptyCokeInt
            leftEmptyCokeInt = emptyCokeInt % a
            emptyCokeInt -= leftEmptyCokeInt
        }
        emptyCokeInt = (emptyCokeInt / a) * b
        newCokeInt += emptyCokeInt
    }

    return newCokeInt
}