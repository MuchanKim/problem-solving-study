import Foundation

var account_book: [Int] = []
var money: Int = 0

var K: Int = Int(readLine()!)!


for i in 0..<K {
    money = Int(readLine()!)!
    
    if money != 0 {
        account_book.append(money)
    }
    else {
        account_book.removeLast()
    }
}

print(account_book.reduce(0, +))