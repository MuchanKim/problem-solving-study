func solution(_ phone_number:String) -> String {
    let n = phone_number.count - 5
    
    guard n != -1 else { return phone_number }
    var phoneNum: [String] = phone_number.map { String($0) }

    for i in 0...n {
        phoneNum[i] = "*"
    }
    return phoneNum.joined()
}