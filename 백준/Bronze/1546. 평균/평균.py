def resultScore(score, highest_score, num_of_scores):
    result = 0
    for num in score:
        result += (num / highest_score) * 100
    return result / num_of_scores

num_of_scores = int(input())

while True:
    scores= [int(score) for score in input().split()]
    max_num = max(scores)

    if num_of_scores == len(scores) and max_num >=0:
        break
    else:
        print(f"{num_of_scores}개의 숫자를 입력해주세요. 음이 아닌 정수이고, 적어도 한개는 0보다 커야합니다.")
        
avr_grade = resultScore(scores, max_num, num_of_scores)
print(avr_grade)