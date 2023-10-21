import sys
from itertools import combinations

N, M = map(int, sys.stdin.readline().split())
house, chickens = [], []
answer = 100000000
for row in range(N):
    arr = list(map(int, sys.stdin.readline().split()))
    for col in range(N):
        if arr[col] == 1:
            house.append([row, col])
        if arr[col] == 2:
            chickens.append([row, col])

for chicken in combinations(chickens, M):
    total = 0
    for r, c in house:
        distance = N ** 2
        for s, e in chicken:
            distance = abs(s - r) + abs(e - c) if distance >= abs(s - r) + abs(e - c) else distance
        total += distance
    answer = min(answer, total)
print(answer)