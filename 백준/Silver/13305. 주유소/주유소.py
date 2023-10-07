n = int(input())
cities = list(map(int, input().split()))
prices = list(map(int, input().split()))

ans = 0
min_price = prices[0]

for i in range(n-1):
    if prices[i] < min_price:
        min_price = prices[i]

    ans += min_price * cities[i]

print(ans)