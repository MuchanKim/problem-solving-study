sticks = [64, 32, 16, 8, 4, 2, 1] 
stack = 0
n = int(input())

if n in sticks:
    print(1)
else:
    for i in range(len(sticks)):
        if sticks[i] > n:
            continue
        elif sticks[i] == n:
            stack +=1
            break
        elif sticks[i] < n:
            n = n - sticks[i]
            stack +=1

    print(stack)