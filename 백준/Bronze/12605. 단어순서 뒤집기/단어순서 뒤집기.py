for _ in range(int(input())):
    s=list(input().split())
    print("Case #%d: "%(_+1),end='')
    print(*s[::-1])