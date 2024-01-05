import sys

input = sys.stdin.readline

change_money = 1000 - int(input())
coins = (500, 100, 50, 10, 5, 1)
count =0

for coin in coins:
    count += change_money // coin
    change_money %= coin

print(count)