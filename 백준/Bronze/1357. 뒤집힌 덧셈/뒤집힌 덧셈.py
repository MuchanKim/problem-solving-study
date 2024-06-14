def Rev(x, y):
    x = int(x[::-1])
    y = int(y[::-1])
    
    ans = str(x + y)
    print(int(ans[::-1]))

x, y = input().split()

ans = Rev(x,y)