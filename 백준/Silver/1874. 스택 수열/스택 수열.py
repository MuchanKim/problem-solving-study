import sys
input = sys.stdin.readline

n = int(input())
stack = []
result = []
digit = 1
able = True

for _ in range(n):
    num = int(input())
    while digit <= num: # digit의 수를 오름차순 증가, stack 리스트에 추가
        stack.append(digit)
        result.append('+')
        digit += 1

    if stack[-1] == num: # stack 마지막 값과 입력값 같으면
        stack.pop()
        result.append('-')
    else:   # 같지 않으면 able -> false로 바꾸고 이 for문 나옴
        print('NO')
        able = False
        break
if able == True: # 가능할때 result 리스트 출력
    for i in result:
        print(i)