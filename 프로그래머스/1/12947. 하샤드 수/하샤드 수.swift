/*
레벨 1 난이도 문제 다 풀어보고 있는데 이건 왜이렇게 쉬운거 같지?

입력된 숫자를 배열로 바꿔주고 각 원소의 합을 더한 후 
조건을 돌리면 됨.

getSumOfDigits는 각 자리의 수를 더하는 함수임.
여기서 중요한 것은 배열로 변환하는 과정에서 map함수를 쓰는데
String으로 반환해주지 않으면 다시 정수로 변환 하는 과정에서 에러가 발생.
그 이유는 Swift에서는 Character를 Int로 변환할 수 없음.
이런 요소 외에는 아주 간단하게 품.
*/
func getSumOfDigits(_ x: Int) -> Int {
    
    let toArrayX = String(x).map { String($0) }
    var result: Int = 0
    
    for i in toArrayX {
        result += Int(i)!
    }
    return result
}

func solution(_ x:Int) -> Bool {
    var sumOfDigit: Int = getSumOfDigits(x)
    
    return x % sumOfDigit == 0 ? true : false
}