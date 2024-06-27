import Foundation

/*
 상당히 쉬워보였음. 문자열 이어쓰기는 파이썬에서 주로 했었기때문에 익숙했고, Swift에서도 문자열 덧셈이 가능함.
 그래서 문자열 덧셈 후 count 함수를 써서 풀어야지했는데, 코드를 쓰면서도 뭔가 시간초과 날 것 같은데? 생각이 듦.
 역시나 시간초과가 남. 그래서 뭔가 수학적인 알고리즘이 있겠지하고 펜과 노트를 꺼내서 적어봄.
 1~9까지는 그냥 그대로 출력하면 됨.
 10부터 99까지는 숫자당 2개 카운트하면 됨.
 근데 이렇게 하는거? 아닌거같음.
 왜냐.. 끝도없다 N 값은 <= 1억이다. 또 다른게 있을거임.
 14를 예로들면 19개가 나온다. 1부터 9까지 숫자를 제외하면 1011121314 총 19개가 나온다. 5개의 숫자에서 10이 나옴.
 똑같은 원리로 66을 하면 9개 제외하면 57개가 나올거고, 10의 자리니 2를 곱하면 됨. 그럼 114가 나옴. 그리고 나머지 9를 더하면 123개.
 어 그러면 10단위로 지어서 현재 수 - 자리수 + 1을하면 되겠구나 싶엇음.
 그래서 코드로 작성
 맞음. 다른 사람 코드 비교하니까 대부분 거의 똑같은 코드가 나옴. 아주 Nice~
 
 처음에 문자열 덧셈 코드는 solution2
 다시 푼건 solution
 
func solution(_ n: Int) -> Int {
    var myStr: String = ""
    
    for i in 1...n {
        let str: String = String(i)
        myStr += str
    }
    return myStr.count
}
*/

func solution(_ n: Int) -> Int {
    var i:Int = 1
    var cnt: Int = 0
    while i <= n {
        cnt += n - i + 1
        i *= 10
    }
    return cnt
}


let N: Int = Int(readLine()!)!

let ans: Int = solution(N)
print(ans)
