/*
문자열을 순회하면서 짝수번째 알파벳은 대문자, 홀수번째 알파벳은 소문자로 바꿔야한다.
문자열 전체의 홀/짝이 아니라, 단어 별로 구문해야하기 때문에, 먼저 공백처리를 해줘야 함.
공백일 경우, 공백을 정답 문자열에 그대로 넣고 인덱스를 0으로 초기화 해주면 끝!
그리고 홀/짝 구분해서 lowercase, uppercase 적용해주면 끝
Easy~
*/

func solution(_ s: String) -> String {
    var result = ""
    var index = 0 // 단어별 인덱스를 관리
    
    for char in s {
        if char == " " {
            // 공백인 경우, 결과에 그대로 추가하고 인덱스 초기화
            result += " "
            index = 0
        } else {
            // 짝수 인덱스: 대문자, 홀수 인덱스: 소문자
            if index % 2 == 0 {
                result += char.uppercased()
            } else {
                result += char.lowercased()
            }
            index += 1
        }
    }
    
    return result
}