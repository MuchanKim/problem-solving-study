n = int(input())
student_info = []

for _ in range(n):
    name, day, month, year = map(str, input().split())
    student_info.append([name, int(day), int(month), int(year)])
    
student_info.sort(key = lambda student: (student[3], student[2], student[1]),  reverse=True)

print(student_info[0][0])
print(student_info[-1][0])