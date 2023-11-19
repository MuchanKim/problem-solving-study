n, k = map(int, (input().split()))
coin = []
cnt = 0
for i in range(n):
    coin.append(input())
for j in range(n-1, -1, -1):
    if int(coin[j]) <= k :
        cnt += k // int(coin[j])
        k -= (int(coin[j]) * (k // int(coin[j])))
    else :
        cnt = cnt
print(cnt)