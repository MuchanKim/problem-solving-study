grade_chart = {
    "A+":4.5,
    "A0":4.0,
    "B+":3.5,
    "B0":3.0,
    "C+":2.5,
    "C0":2.0,
    "D+":1.5,
    "D0":1.0,
    'F':0.0
}

credit_sum = 0.0 # 학생이 수강한 총 학점
student_sum_score = 0.0  # 학생이 받은 총 평점 합계

for _ in range(20):
    subject, credit, grade = map(str, input().split())
    if grade != 'P':
        credit = float(credit)
    
        student_sum_score += credit * grade_chart[grade]
        credit_sum += credit
        
ans = student_sum_score / credit_sum

print(ans)