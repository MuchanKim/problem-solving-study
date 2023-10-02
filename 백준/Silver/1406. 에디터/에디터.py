import sys

left_str=list(input())
right_str=[]

M=int(input())

for _ in range(M):
    cmd=sys.stdin.readline().strip().split()

    try:
        if cmd[0]=='L':
            right_str.append(left_str.pop())

        elif cmd[0]=='D':
            left_str.append(right_str.pop())

        elif cmd[0]=='B':
            left_str.pop()

        elif cmd[0]=='P':
            left_str.append(cmd[1])

    except:
        pass

ans=left_str+right_str[::-1]

for _ in ans:
    print(_, end='')