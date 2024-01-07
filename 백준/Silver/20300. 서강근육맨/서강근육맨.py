import sys

input = sys.stdin.readline
M = 0

num_of_machine = int(input())
loss_value = list(map(int, input().split()))
loss_value.sort()

if num_of_machine % 2 == 1:
    M = loss_value[-1]
    loss_value.pop(-1)

while loss_value:
    loss = loss_value[0] + loss_value[-1]
    if loss > M:
        M = loss
    loss_value.pop(0)
    loss_value.pop(-1)

print(M)