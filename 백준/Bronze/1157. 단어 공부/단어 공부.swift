let dict = Dictionary(readLine()!.uppercased().map { ($0, 1) }, uniquingKeysWith: +)
let maxValueDict = dict.filter { $0.value == dict.values.max()! }
maxValueDict.count > 1 ? print("?") : print(maxValueDict.keys.first!)