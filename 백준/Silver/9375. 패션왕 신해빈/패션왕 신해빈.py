for i in range(int(input())):
    clothes = {}
    for j in range(int(input())):
        clothses_name, clothes_type = input().split()
        
        if clothes_type not in clothes.keys():
            clothes[clothes_type] = 1
        else:
            clothes[clothes_type] += 1
    ans = 1
    for i in clothes:
        ans *= (clothes[i]+1)
    print(ans-1)