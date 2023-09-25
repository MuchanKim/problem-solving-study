c = int(input())

for i in range(c):
    score = list(map(int, input().split()))
    
    student_num = score[0]
    del score[0]

    avg = sum(score) / len(score)
    upper_count = 0
    for j in range(len(score)):
        if score[j] > avg:
            upper_count += 1

    print('%.3f' %(upper_count*100/len(score)) + '%')