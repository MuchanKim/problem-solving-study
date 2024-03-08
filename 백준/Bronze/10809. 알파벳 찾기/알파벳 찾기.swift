let s = readLine()!.map { $0.asciiValue! }  // 문자열을 받고, 각 문자를 ASCII 값으로 변환한다.
let answer = (97...122).map { s.firstIndex(of: $0) ?? -1 }  // 해당하는 문자에 따른 인덱스를 찾고 못찾을 시 -1을 반환
answer.forEach { print($0, terminator: " ") } // 순회하면서 요소 출력