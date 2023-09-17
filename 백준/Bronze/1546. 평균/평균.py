# 점수 리스트 생성 함수
def create_scores_list(num_of_scores):
    while True:
        # 공백을 기준으로 분리하여 리스트에 저장
        scores= [int(score) for score in input().split()]
        
        # 입력받은 숫자의 개수와 조건에 맞는지 확인
        if num_of_scores == len(scores) and max(scores) >=0:
            return scores
        else:
            print(f"{num_of_scores}개의 숫자를 입력해주세요. 음이 아닌 정수이고, 적어도 한개는 0보다 커야합니다.")

# 평균 점수 계산 함수
def calculate_average_score(score):
    highest_score = max(score) # 최고 점수
    result = 0
    
    for num in score:
        result += (num / highest_score) * 100
    return result / num_of_scores

num_of_scores = int(input())

scores = create_scores_list(num_of_scores)
avr_grade = calculate_average_score(scores)

print(avr_grade)
