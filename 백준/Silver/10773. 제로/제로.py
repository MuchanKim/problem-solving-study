import sys
from collections import deque

stack = deque()
input = sys.stdin.readline
N = int(input())

for _ in range(N):
    N = int(input())

    if N != 0:
        stack.append(N)
    
    if N == 0:
        stack.pop()

print (sum(stack))