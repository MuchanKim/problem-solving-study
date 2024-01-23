import sys

input = sys.stdin.readline

n = int(input())
queue = []

for _ in range(n):
    cmd = input().split()
    
    if cmd[0] == 'push':
        value = int(cmd[1])
        queue.append(value)
    elif cmd[0] == 'pop':
        if queue:
            print(queue.pop(0))
        else:
            print(-1)
    elif cmd[0] == 'size':
        print(len(queue))
    elif cmd[0] == 'empty':
        if queue:
            print(0)
        else:
            print(1)
    elif cmd[0] == 'front':
        if queue:
            print(queue[0])
        else:
            print(-1)
    elif cmd[0] == 'back':
        if queue:
            print(queue[-1])
        else:
            print(-1)