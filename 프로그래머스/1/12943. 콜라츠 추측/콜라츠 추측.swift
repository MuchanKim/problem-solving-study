/*
개발을 생성형 ai로 하다보니 이런 쉬운 문제부터 시작해야 할 듯.
이번주까지만 레벨1로 풀어보자!
조건처리만해서 딱히 어려운 문제는 아니라 풀이는 생략!@
*/
func solution(_ num: Int) -> Int {
    var count = 0
    var current = num

    while current != 1 {
        if count >= 500 {
            return -1
        }
        if current % 2 == 0 {
            current /= 2
        } else {
            current = current * 3 + 1
        }
        count += 1
    }

    return count
}