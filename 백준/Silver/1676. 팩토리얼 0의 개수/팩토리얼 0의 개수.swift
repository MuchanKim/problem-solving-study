var N:Int = Int(readLine()!)!

print(N / 5 + N / 25 + N / 125)



/* 기존 답안인데 런타임 에러 뜸..
   그래서 구글링 좀 해봤는데 팩토리얼을 계산하는 것은 함정이었다.
   단순히 자릿값이 연속해서 0인거를 계산하려고 한 코드이다.
   --- 해결 방법 ---
   5! = 120(12 * (5*2))
   10! = 3628800(3628 * (10 * 5 * 2))
   5*2가 몇번 나오는지 찾으면 된다..
   근데 또 신기한 점. 0개수 = 5의 개수이다.
   그래서 5의 개수를 찾으면 된다.
   테스트 케이스는 500이하의 수이다. 고로
   5, 5^2, 5^3의 값을 나눈 몫이 각각 0의 개수가 된다는 것이다.....
  
   --- 기존 코드 ---
 
 func factorial(_ n:Int) -> Int {
     var number: Int = 1
     for i in number...n {
         number *= i
     }
     return number
 }

 func solution(_ factorialNum: Int) -> Void {
     var i: Int = 10
     var count: Int = 0
     
     while true {
         if factorialNum % i == 0 {
             count = count + 1
             i = i * 10
         }
         else {
             break
         }
     }
     print(count)
 }

 let N: Int = Int(readLine()!)!

 solution(factorial(N))
 
 */