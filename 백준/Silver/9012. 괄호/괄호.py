for _ in range(int(input())):
    stack = []
    isVPS = True
    for ch in input():
        if ch == '(':
            stack.append(ch)
        elif ch == ')':
            if stack:
                stack.pop()
            else:
                isVPS = False
                break
    
    if stack:
        isVPS = False
    
    print("YES" if isVPS else "NO")