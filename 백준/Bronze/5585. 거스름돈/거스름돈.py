import sys

input = sys.stdin.readline

n = int(input())
money = 1000 - n
count = 0

count += int(money / 500)
money %= 500
count += int(money / 100)
money %= 100
count += int(money / 50)
money %= 50
count += int(money / 10)
money %= 10
count += int(money / 5)
money %= 5
count += int(money / 1)

print(count)