import Foundation

func solution(_ testCases: Int, _ cases: [[String]], _ knownSoundsList: [[String]]) {
    for i in 0..<testCases {
        let recordedSounds = cases[i]
        let knownSounds = Set(knownSoundsList[i])
        
        let foxSounds = recordedSounds.filter { !knownSounds.contains($0) }
        
        print(foxSounds.joined(separator: " "))
    }
}

if let T = Int(readLine()!) {
    var cases: [[String]] = []
    var knownSoundsList: [[String]] = []
    
    for _ in 0..<T {
        let recordedSounds = readLine()!.split(separator: " ").map { String($0) }
        var knownSounds = Set<String>()

        while let input = readLine(), input != "what does the fox say?" {
            let parts = input.split(separator: " ").map { String($0) }
            if parts.count == 3 && parts[1] == "goes" {
                knownSounds.insert(parts[2])
            }
        }

        cases.append(recordedSounds)
        knownSoundsList.append(Array(knownSounds))
    }

    solution(T, cases, knownSoundsList)
}