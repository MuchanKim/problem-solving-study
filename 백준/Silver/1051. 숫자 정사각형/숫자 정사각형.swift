import Foundation

// 입력 받기
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var grid = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.map { Int(String($0))! }
    grid.append(row)
}

var maxSize = 1

// 모든 가능한 정사각형 크기를 탐색
for i in 0..<n {
    for j in 0..<m {
        // 최대 가능한 정사각형 크기를 하드코딩으로 탐색
        for size in 1..<min(n, m) {
            if i + size < n && j + size < m {
                let topLeft = grid[i][j]
                let topRight = grid[i][j + size]
                let bottomLeft = grid[i + size][j]
                let bottomRight = grid[i + size][j + size]
                
                // 꼭짓점의 숫자가 모두 같은지 확인
                if topLeft == topRight && topLeft == bottomLeft && topLeft == bottomRight {
                    maxSize = max(maxSize, size + 1)
                }
            }
        }
    }
}

print(maxSize * maxSize)